
rule VirTool_Win32_CeeInject_gen_GX{
	meta:
		description = "VirTool:Win32/CeeInject.gen!GX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {c7 44 24 10 40 00 00 00 c7 44 24 0c 00 30 00 00 8b 95 90 01 04 8b 42 50 89 44 24 90 01 01 8b 42 34 89 44 24 90 01 01 8b 45 90 01 01 89 04 24 ff 95 90 00 } //1
		$a_03_1 = {07 00 01 00 90 09 02 00 c7 90 00 } //1
		$a_03_2 = {66 83 7a 06 00 0f 84 90 01 04 c7 85 90 01 04 00 00 00 00 c7 85 90 01 04 00 00 00 00 89 bd 90 01 04 8b bd 90 01 04 8b 46 3c 8d 9c 07 f8 00 00 00 03 9d 90 1b 01 90 00 } //1
		$a_03_3 = {03 78 28 8b 95 90 01 04 89 ba b0 00 00 00 e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}