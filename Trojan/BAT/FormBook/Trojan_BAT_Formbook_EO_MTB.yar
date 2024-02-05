
rule Trojan_BAT_Formbook_EO_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 09 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 39 37 65 63 31 34 63 64 2d 38 33 37 38 2d 34 66 38 65 2d 39 31 61 61 2d 34 37 34 65 32 62 64 30 31 35 62 37 } //01 00 
		$a_81_1 = {50 72 6f 66 65 73 73 69 6f 6e 61 6c 5f 45 64 69 74 6f 72 2e 43 6f 72 65 4d 61 69 6e 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_2 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_7 = {41 63 74 69 76 61 74 6f 72 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}