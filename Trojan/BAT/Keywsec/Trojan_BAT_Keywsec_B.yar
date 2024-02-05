
rule Trojan_BAT_Keywsec_B{
	meta:
		description = "Trojan:BAT/Keywsec.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //01 00 
		$a_01_1 = {66 00 65 00 61 00 74 00 75 00 72 00 65 00 73 00 2f 00 6e 00 65 00 77 00 2d 00 66 00 65 00 61 00 74 00 75 00 72 00 65 00 2f 00 3f 00 76 00 3d 00 } //01 00 
		$a_01_2 = {61 00 48 00 52 00 30 00 63 00 44 00 6f 00 76 00 } //01 00 
		$a_01_3 = {44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 5c 00 2e 00 2e 00 5c 00 } //01 00 
		$a_01_4 = {5c 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 2e 00 6c 00 6f 00 67 00 } //01 00 
		$a_01_5 = {30 00 2f 00 6d 00 61 00 63 00 2f 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 4f 
	condition:
		any of ($a_*)
 
}