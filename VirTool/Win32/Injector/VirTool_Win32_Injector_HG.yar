
rule VirTool_Win32_Injector_HG{
	meta:
		description = "VirTool:Win32/Injector.HG,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b de 8b b4 02 90 01 04 81 c6 90 01 04 89 b4 02 90 01 04 0f b7 c3 99 2b c7 1b 15 90 01 04 33 ff 03 44 24 10 89 1d 90 01 04 13 d7 8b 7c 24 14 83 c7 04 81 ff 90 01 04 89 35 90 01 04 a3 90 01 04 89 15 90 01 04 89 7c 24 14 0f 82 90 00 } //01 00 
		$a_03_1 = {66 03 d1 66 83 c2 08 66 89 15 90 01 04 0f b7 d2 8b f2 2b f1 83 ee 3a 85 c0 89 35 90 01 04 0f 84 90 01 04 8b 4c 24 0c 8d 54 0a 0c 8d 4c 24 14 51 50 89 15 90 01 04 ff 15 90 00 } //01 00 
		$a_03_2 = {8d 4c 02 08 89 0d 90 01 04 8b 15 90 01 04 83 c2 3b 0f b7 05 88 a4 42 00 2b d0 89 55 e8 68 90 01 04 e8 90 01 04 83 c4 04 8b 7d ec 46 be 90 01 04 57 03 f3 81 ee 90 01 04 c3 90 00 } //00 00 
		$a_00_3 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}