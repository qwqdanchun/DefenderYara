
rule _PseudoThreat_40000021{
	meta:
		description = "!PseudoThreat_40000021,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 6f 66 74 77 61 72 65 5c 90 03 08 0a 53 65 63 75 72 69 74 79 50 72 6f 74 65 63 74 69 6f 6e 20 54 6f 6f 6c 73 00 90 00 } //01 00 
		$a_00_1 = {56 69 64 65 6f 20 41 58 20 4f 62 6a 65 63 74 00 } //01 00 
		$a_00_2 = {49 6d 61 67 65 20 41 58 20 4f 62 6a 65 63 74 00 } //01 00 
		$a_01_3 = {41 74 74 65 6e 74 69 6f 6e 21 00 } //01 00 
		$a_00_4 = {69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f } //00 00  if exist "%s" goto
	condition:
		any of ($a_*)
 
}