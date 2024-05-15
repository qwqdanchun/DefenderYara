
rule Trojan_BAT_WebShell_HNH_MTB{
	meta:
		description = "Trojan:BAT/WebShell.HNH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 70 70 5f 57 65 62 5f } //01 00  App_Web_
		$a_01_1 = {00 42 69 6e 61 72 79 52 65 61 64 00 } //01 00  䈀湩牡剹慥d
		$a_01_2 = {00 52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 00 } //01 00 
		$a_01_3 = {00 43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 00 } //01 00 
		$a_01_4 = {53 65 73 73 69 6f 6e 00 } //0a 00  敓獳潩n
		$a_01_5 = {12 7d 1d 05 04 20 01 1c 0e 04 20 01 } //0a 00 
		$a_01_6 = {00 07 63 00 76 00 62 00 00 0f 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}