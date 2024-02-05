
rule VirTool_Win32_VBInject_gen_LB{
	meta:
		description = "VirTool:Win32/VBInject.gen!LB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 40 0c c7 04 c8 55 89 e5 31 c7 44 c8 04 c0 31 db 31 } //01 00 
		$a_03_1 = {68 f8 00 00 00 ff 75 08 8d 45 ec 50 e8 90 01 02 ff ff 68 90 01 02 40 00 90 00 } //01 00 
		$a_01_2 = {8b 40 0c c7 04 c8 89 0b 83 c3 c7 44 c8 04 04 eb 64 59 } //00 00 
	condition:
		any of ($a_*)
 
}