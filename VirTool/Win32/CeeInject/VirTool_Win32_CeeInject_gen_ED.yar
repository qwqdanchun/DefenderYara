
rule VirTool_Win32_CeeInject_gen_ED{
	meta:
		description = "VirTool:Win32/CeeInject.gen!ED,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 ec f0 02 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 6a 0f e8 90 01 02 ff ff 83 c4 40 50 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 68 90 01 01 00 00 00 6a 0a e8 90 01 02 ff ff 83 c4 2c 50 e8 90 01 02 ff ff 90 00 } //01 00 
		$a_01_1 = {b8 01 00 00 00 85 c0 74 18 8b 4d fc 3b 4d f4 75 05 } //00 00 
	condition:
		any of ($a_*)
 
}