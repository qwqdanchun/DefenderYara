
rule VirTool_BAT_Subti_F{
	meta:
		description = "VirTool:BAT/Subti.F,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 00 4b 00 49 00 4c 00 4c 00 41 00 4d 00 55 00 56 00 5a 00 23 00 } //01 00 
		$a_01_1 = {23 00 4b 00 49 00 4c 00 4c 00 41 00 23 00 } //01 00 
		$a_01_2 = {45 6c 65 76 61 74 65 50 72 6f 63 65 73 73 00 } //01 00 
		$a_01_3 = {64 65 66 42 72 6f 77 73 65 72 00 } //01 00 
		$a_01_4 = {52 75 6e 4e 74 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}