
rule Trojan_Win32_CoinMiner_OT_bit{
	meta:
		description = "Trojan:Win32/CoinMiner.OT!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 69 00 70 00 6c 00 6f 00 67 00 67 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 2f 00 } //1 https://iplogger.com/
		$a_01_1 = {58 4d 52 69 67 2f 25 73 20 6c 69 62 75 76 2f 25 73 25 73 } //1 XMRig/%s libuv/%s%s
		$a_01_2 = {73 74 72 61 74 75 6d 2b 74 63 70 3a 2f 2f 78 6d 72 2e 70 6f 6f 6c 2e 6d 69 6e 65 72 67 61 74 65 2e 63 6f 6d 3a } //1 stratum+tcp://xmr.pool.minergate.com:
		$a_03_3 = {70 00 72 00 6f 00 63 00 65 00 78 00 70 00 2e 00 65 00 78 00 65 00 90 02 06 70 00 72 00 6f 00 63 00 65 00 78 00 70 00 36 00 34 00 2e 00 65 00 78 00 65 00 90 02 06 70 00 72 00 6b 00 69 00 6c 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 90 02 06 4b 00 69 00 6c 00 6c 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 65 00 78 00 65 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}