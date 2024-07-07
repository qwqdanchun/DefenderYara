
rule Trojan_BAT_CoinMiner_S_ibt{
	meta:
		description = "Trojan:BAT/CoinMiner.S!ibt,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 07 00 00 "
		
	strings :
		$a_80_0 = {73 63 68 74 61 73 6b 73 20 2f 63 72 65 61 74 65 20 2f 74 6e 20 5c } //schtasks /create /tn \  4
		$a_80_1 = {2f 73 74 20 30 30 3a 30 30 20 2f 64 75 20 39 39 39 39 3a 35 39 20 2f 73 63 20 6f 6e 63 65 20 2f 72 69 20 31 20 2f 66 } ///st 00:00 /du 9999:59 /sc once /ri 1 /f  4
		$a_02_2 = {63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 90 02 06 26 00 20 00 44 00 65 00 6c 00 90 00 } //4
		$a_02_3 = {63 68 6f 69 63 65 20 2f 43 20 59 20 2f 4e 20 2f 44 20 59 20 2f 54 90 02 06 26 20 44 65 6c 90 00 } //4
		$a_00_4 = {2d 00 2d 00 6d 00 61 00 78 00 2d 00 63 00 70 00 75 00 2d 00 75 00 73 00 61 00 67 00 65 00 } //1 --max-cpu-usage
		$a_00_5 = {78 00 6d 00 72 00 69 00 67 00 } //1 xmrig
		$a_00_6 = {73 00 74 00 72 00 61 00 74 00 75 00 6d 00 } //1 stratum
	condition:
		((#a_80_0  & 1)*4+(#a_80_1  & 1)*4+(#a_02_2  & 1)*4+(#a_02_3  & 1)*4+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1) >=13
 
}