
rule VirTool_Win32_CeeInject_gen_FF{
	meta:
		description = "VirTool:Win32/CeeInject.gen!FF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {80 fb 5a 0f 94 c2 33 db 80 3f 4d 0f 94 c3 } //01 00 
		$a_03_1 = {07 00 01 00 90 09 06 00 c7 05 90 00 } //01 00 
		$a_03_2 = {83 c1 08 51 52 ff 15 90 01 04 85 c0 a0 90 01 04 74 0c 3c 01 75 08 90 09 07 00 6a 04 68 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}