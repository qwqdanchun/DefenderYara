
rule VirTool_Win32_DelfInject_gen_BJ{
	meta:
		description = "VirTool:Win32/DelfInject.gen!BJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {0f 01 4d fa 8a 45 ff 3c e8 74 04 3c ff } //01 00 
		$a_01_1 = {0f 01 4d f5 0f b6 45 fa 3c e8 74 04 3c ff } //01 00 
		$a_03_2 = {8b c3 99 f7 7d 90 01 01 8b c6 32 d0 90 00 } //01 00 
		$a_01_3 = {0f b6 44 18 ff 99 f7 fb 33 f2 43 } //01 00 
		$a_03_4 = {8d 34 9b 8b 45 90 01 01 8b 44 f0 10 50 8b 45 90 01 01 8b 44 f0 14 03 45 90 01 01 50 8b 45 90 01 01 8b 44 f0 0c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}