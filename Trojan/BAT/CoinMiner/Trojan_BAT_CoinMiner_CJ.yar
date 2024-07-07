
rule Trojan_BAT_CoinMiner_CJ{
	meta:
		description = "Trojan:BAT/CoinMiner.CJ,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 32 00 31 00 31 00 2e 00 31 00 31 00 32 00 2e 00 32 00 35 00 2e 00 32 00 33 00 35 00 2f 00 65 00 7a 00 6f 00 6e 00 2f 00 73 00 77 00 2f 00 53 00 57 00 46 00 54 00 2f 00 49 00 6d 00 61 00 67 00 65 00 2f 00 75 00 73 00 65 00 72 00 2f 00 77 00 65 00 62 00 2f 00 } //1 http://211.112.25.235/ezon/sw/SWFT/Image/user/web/
		$a_01_1 = {41 00 75 00 74 00 6f 00 53 00 63 00 61 00 6e 00 43 00 72 00 61 00 63 00 6b 00 45 00 78 00 65 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 74 00 61 00 73 00 6b 00 6c 00 69 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //1 AutoScanCrackExe.Properties.tasklist.txt
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 31 00 38 00 2e 00 32 00 30 00 35 00 2e 00 31 00 36 00 38 00 2e 00 32 00 2f 00 74 00 69 00 6e 00 6e 00 6f 00 6f 00 74 00 61 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2f 00 33 00 33 00 2f 00 31 00 30 00 37 00 32 00 2f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2f 00 69 00 6e 00 69 00 } //1 http://18.205.168.2/tinnoota/upload/33/1072/config/ini
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}