
rule VirTool_Win32_VBInject_gen_FM{
	meta:
		description = "VirTool:Win32/VBInject.gen!FM,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 40 1c 03 41 10 90 02 06 8b 4d 08 89 81 ac 02 90 00 } //01 00 
		$a_01_1 = {c7 80 fc 01 00 00 07 00 01 00 } //01 00 
	condition:
		any of ($a_*)
 
}