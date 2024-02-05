
rule VirTool_Win32_VBInject_gen_BI{
	meta:
		description = "VirTool:Win32/VBInject.gen!BI,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {fb 12 fc 0d 6c 6c ff 80 0c 00 fc a0 6c 6c ff 6c 5c ff e0 1c } //01 00 
		$a_01_1 = {f5 58 59 59 59 59 40 ff 6c 6c ff 0a 03 00 0c 00 } //01 00 
		$a_01_2 = {44 62 67 74 68 69 73 00 41 53 44 78 00 } //01 00 
		$a_00_3 = {4e 00 74 00 57 00 72 00 69 00 74 00 65 00 56 00 69 00 72 00 74 00 75 00 61 00 6c 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 00 00 } //01 00 
		$a_00_4 = {4e 00 74 00 52 00 65 00 73 00 75 00 6d 00 65 00 54 00 68 00 72 00 65 00 61 00 64 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}