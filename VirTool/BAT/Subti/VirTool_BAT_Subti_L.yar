
rule VirTool_BAT_Subti_L{
	meta:
		description = "VirTool:BAT/Subti.L,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 45 2e 65 78 65 00 3c 4d 6f 64 75 6c 65 3e } //01 00 
		$a_01_1 = {69 6e 6a 65 63 74 69 6f 6e } //01 00 
		$a_01_2 = {4d 65 78 65 63 75 74 65 } //01 00 
		$a_03_3 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 90 01 02 72 00 65 00 67 00 61 00 73 00 6d 00 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}