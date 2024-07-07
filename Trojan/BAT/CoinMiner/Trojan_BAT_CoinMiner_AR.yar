
rule Trojan_BAT_CoinMiner_AR{
	meta:
		description = "Trojan:BAT/CoinMiner.AR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {4d 00 65 00 6c 00 74 00 28 00 29 00 3b 00 } //1 Melt();
		$a_03_1 = {5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 5c 00 90 02 20 2e 00 65 00 78 00 65 00 90 00 } //1
		$a_03_2 = {20 00 2d 00 6f 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 6d 00 69 00 6e 00 74 00 2e 00 62 00 69 00 74 00 6d 00 69 00 6e 00 74 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 3a 00 38 00 33 00 33 00 32 00 20 00 2d 00 75 00 20 00 90 02 20 20 00 2d 00 70 00 20 00 78 00 20 00 2d 00 74 00 20 00 34 00 20 00 2d 00 67 00 90 00 } //1
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //1 Software\Microsoft\Windows\CurrentVersion\Run
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}