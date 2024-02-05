
rule VirTool_Win32_CeeInject_gen_X{
	meta:
		description = "VirTool:Win32/CeeInject.gen!X,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {b8 68 58 4d 56 } //01 00 
		$a_01_1 = {6a 40 8b f7 68 00 10 00 00 03 77 3c 89 74 24 18 ff 76 50 55 ff 15 } //01 00 
		$a_01_2 = {6a 40 89 5c 24 58 68 00 10 00 00 f3 ab ff 76 50 53 ff 15 } //01 00 
		$a_01_3 = {0f b6 04 01 03 c7 f7 f3 8b 5d 08 0f b6 04 1e 2b c2 79 05 05 00 01 00 00 88 04 1e } //01 00 
		$a_01_4 = {bb e8 03 00 00 89 4d f4 0f b6 04 02 03 45 10 33 d2 f7 f3 0f b6 19 2b da 79 06 81 c3 00 01 00 00 } //01 00 
		$a_01_5 = {01 44 24 24 ff 44 24 14 0f b7 46 06 83 44 24 1c 28 39 44 24 14 0f 8c } //01 00 
		$a_03_6 = {42 55 54 54 4f 4e 00 90 05 04 01 00 49 63 6f 6e 2e 69 63 6f 00 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}