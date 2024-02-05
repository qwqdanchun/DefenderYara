
rule HackTool_Win32_TwitterPassDump{
	meta:
		description = "HackTool:Win32/TwitterPassDump,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 74 65 72 4a 6f 20 54 77 69 74 74 65 72 20 50 61 73 73 77 6f 72 64 20 46 69 6e 64 65 72 } //02 00 
		$a_01_1 = {2f 00 73 00 74 00 65 00 72 00 6a 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 63 00 6f 00 6d 00 2f 00 } //01 00 
		$a_01_2 = {4f 00 70 00 65 00 72 00 61 00 20 00 53 00 74 00 61 00 62 00 6c 00 65 00 5c 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 44 00 61 00 74 00 61 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}