
rule VirTool_Win32_VBInject_gen_FN{
	meta:
		description = "VirTool:Win32/VBInject.gen!FN,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 4e 51 c7 00 07 00 01 00 } //01 00 
		$a_03_1 = {66 0f b6 0c 08 8b 95 90 01 04 8b 85 90 01 04 66 33 0c 50 ff 15 90 00 } //01 00 
		$a_03_2 = {50 89 8a b0 00 00 00 ff d6 8d 8d 90 01 04 6a 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}