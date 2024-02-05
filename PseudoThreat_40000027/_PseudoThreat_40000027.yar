
rule _PseudoThreat_40000027{
	meta:
		description = "!PseudoThreat_40000027,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 08 00 00 04 00 "
		
	strings :
		$a_01_0 = {5c 50 43 20 44 72 69 76 65 20 54 6f 6f 6c } //01 00 
		$a_01_1 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 72 00 6d 00 76 00 67 00 6f 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_2 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 70 00 6f 00 70 00 6e 00 65 00 74 00 78 00 6f 00 67 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_3 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 61 00 70 00 6e 00 65 00 74 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 6a 00 6f 00 6b 00 77 00 6d 00 70 00 2e 00 64 00 6c 00 6c 00 } //0a 00 
		$a_01_5 = {53 00 68 00 65 00 6c 00 6c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 44 00 65 00 6c 00 61 00 79 00 4c 00 6f 00 61 00 64 00 } //0a 00 
		$a_01_6 = {48 54 54 50 43 6c 69 65 6e 74 } //0a 00 
		$a_00_7 = {73 6f 66 74 77 61 72 65 5c 73 6f 66 74 77 61 72 65 5c 70 72 6f 64 75 63 74 73 } //00 00 
	condition:
		any of ($a_*)
 
}