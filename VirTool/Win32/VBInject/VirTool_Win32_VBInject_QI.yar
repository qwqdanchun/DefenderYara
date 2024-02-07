
rule VirTool_Win32_VBInject_QI{
	meta:
		description = "VirTool:Win32/VBInject.QI,SIGNATURE_TYPE_PEHSTR,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 79 54 45 41 52 52 41 79 } //01 00  byTEARRAy
		$a_01_1 = {63 00 68 00 75 00 70 00 65 00 74 00 69 00 6e 00 } //01 00  chupetin
		$a_01_2 = {64 00 61 00 6d 00 61 00 6a 00 75 00 61 00 6e 00 61 00 } //01 00  damajuana
		$a_01_3 = {8b 49 0c 8b 14 01 52 68 28 22 40 00 ff 15 9c 10 40 00 85 c0 0f 85 48 01 00 00 8b 45 d8 85 c0 75 0f 8d 45 d8 50 68 18 1b 40 00 } //01 00 
		$a_01_4 = {8b 49 0c 8b 14 01 52 68 0c 24 40 00 ff 15 9c 10 40 00 85 c0 0f 85 35 01 00 00 8b 45 e4 } //01 00 
		$a_01_5 = {57 89 39 8d 45 b8 68 80 00 00 00 8d 4d cc 50 89 7d b8 51 89 7d e8 89 7d e4 89 7d cc 89 7d c8 89 55 c0 c7 45 b8 08 40 00 00 ff d3 8d 55 cc } //00 00 
	condition:
		any of ($a_*)
 
}