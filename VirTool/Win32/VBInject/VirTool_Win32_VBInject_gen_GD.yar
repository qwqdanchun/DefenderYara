
rule VirTool_Win32_VBInject_gen_GD{
	meta:
		description = "VirTool:Win32/VBInject.gen!GD,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 07 00 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 01 6a 01 8d 95 90 01 04 6a 00 52 6a 10 68 80 08 00 00 c7 85 90 01 04 07 00 01 00 ff 15 90 01 04 8d 85 90 01 04 c7 85 90 01 04 03 40 00 00 89 85 90 01 04 8b 85 90 01 04 83 c4 1c 8d 95 90 01 04 8b 48 90 01 01 c1 e1 04 89 8d 90 01 04 8b 48 90 01 01 8b 85 90 01 04 2b c8 ff d7 8d 8d 90 01 04 51 ff d3 90 00 } //5
		$a_03_1 = {8d 4d c8 ff d7 8d 45 c8 68 90 01 04 50 e8 90 01 04 8d 4d c8 8d 55 e8 51 52 ff 15 90 01 04 50 e8 90 01 04 8b d0 b9 90 01 04 ff d3 8d 4d e8 ff 15 90 01 04 8d 4d c8 ff d7 8b 45 ec 3b c6 75 90 00 } //5
		$a_00_2 = {41 00 43 00 3a 00 5c 00 41 00 74 00 61 00 72 00 69 00 2e 00 76 00 62 00 70 00 00 00 } //3
		$a_01_3 = {66 72 6d 4f 44 42 43 4c 6f 67 6f 6e 00 } //1
		$a_01_4 = {47 65 74 44 53 4e 73 41 6e 64 44 72 69 76 65 72 73 00 } //1 敇䑴乓䅳摮牄癩牥s
		$a_01_5 = {5f 5f 76 62 61 53 74 6f 70 45 78 65 00 } //1
		$a_01_6 = {5f 5f 76 62 61 53 65 74 53 79 73 74 65 6d 45 72 72 6f 72 00 } //1 彟扶卡瑥祓瑳浥牅潲r
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_00_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=13
 
}