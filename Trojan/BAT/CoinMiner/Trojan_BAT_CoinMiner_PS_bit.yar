
rule Trojan_BAT_CoinMiner_PS_bit{
	meta:
		description = "Trojan:BAT/CoinMiner.PS!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 00 73 65 74 5f 46 69 6c 65 4e 61 6d 65 00 73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00 
		$a_01_1 = {47 65 74 50 72 6f 63 65 73 73 65 73 42 79 4e 61 6d 65 00 4b 69 6c 6c } //02 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //02 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_3 = {73 00 74 00 72 00 61 00 74 00 75 00 6d 00 2b 00 74 00 63 00 70 00 3a 00 2f 00 2f 00 } //00 00  stratum+tcp://
	condition:
		any of ($a_*)
 
}