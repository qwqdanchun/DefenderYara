
rule _PseudoThreat_4000002d{
	meta:
		description = "!PseudoThreat_4000002d,SIGNATURE_TYPE_PEHSTR_EXT,24 00 24 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //0a 00 
		$a_01_1 = {4f 70 65 6e 45 76 65 6e 74 57 } //0a 00 
		$a_01_2 = {4e 65 74 62 69 6f 73 } //03 00 
		$a_02_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 74 00 68 00 65 00 6e 00 90 03 04 00 6d 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 90 03 06 00 63 00 6f 00 6d 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 77 00 2e 00 70 00 68 00 70 00 90 00 } //02 00 
		$a_01_4 = {3f 00 63 00 6f 00 64 00 65 00 3d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 2d 00 30 00 30 00 26 00 68 00 61 00 73 00 68 00 3d 00 } //01 00 
		$a_01_5 = {62 00 78 00 31 00 38 00 64 00 78 00 76 00 2e 00 64 00 61 00 74 00 } //01 00 
		$a_01_6 = {62 78 31 38 64 78 76 2e 64 61 74 } //02 00 
		$a_01_7 = {4d 00 79 00 42 00 49 00 54 00 53 00 54 00 72 00 61 00 6e 00 73 00 5f 00 6e 00 65 00 77 00 } //00 00 
	condition:
		any of ($a_*)
 
}