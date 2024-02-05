
rule VirTool_Win32_VBInject_gen_BL{
	meta:
		description = "VirTool:Win32/VBInject.gen!BL,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 45 fc 6e 00 00 00 8b 85 90 01 02 ff ff 03 85 90 01 02 ff ff 89 85 90 01 02 ff ff c7 45 fc 6f 00 00 00 90 00 } //01 00 
		$a_01_1 = {3d 4d 5a 00 00 74 05 e9 } //01 00 
		$a_01_2 = {8b 51 0c 2b 51 14 0f b6 4c 02 02 03 d0 0f b6 1c 39 0f b6 42 01 } //01 00 
		$a_03_3 = {3b d9 7f 13 a1 90 01 04 8b 70 0c 2b 70 14 c6 04 1e cc 03 da eb e3 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}