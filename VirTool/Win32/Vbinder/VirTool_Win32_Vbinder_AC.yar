
rule VirTool_Win32_Vbinder_AC{
	meta:
		description = "VirTool:Win32/Vbinder.AC,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {40 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 56 00 4d 00 57 00 2d 00 31 00 5c 00 5f 00 31 00 5f 00 5c 00 53 00 54 00 42 00 5c 00 53 00 54 00 42 00 2b 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {41 00 6c 00 69 00 65 00 6e 00 2d 00 53 00 70 00 69 00 72 00 69 00 74 00 } //01 00 
		$a_00_2 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 53 00 54 00 42 00 2e 00 45 00 78 00 45 00 } //01 00 
		$a_01_3 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_00_4 = {73 00 69 00 6c 00 77 00 33 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}