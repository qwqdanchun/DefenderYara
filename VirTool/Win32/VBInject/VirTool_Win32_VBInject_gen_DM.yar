
rule VirTool_Win32_VBInject_gen_DM{
	meta:
		description = "VirTool:Win32/VBInject.gen!DM,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 "
		
	strings :
		$a_01_0 = {8b 40 1c 03 41 10 } //2
		$a_03_1 = {66 33 0c 42 e8 90 01 04 8a d8 90 02 18 88 18 90 00 } //2
		$a_03_2 = {3d 4d 5a 00 00 74 05 e9 90 01 04 8b 45 0c 90 00 } //1
		$a_00_3 = {35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 00 00 } //2
		$a_03_4 = {99 6a 05 5e f7 fe 83 c2 01 90 02 06 33 ca 90 00 } //1
		$a_03_5 = {07 00 01 00 90 09 09 00 90 02 03 8b 45 08 c7 90 00 } //2
		$a_01_6 = {6d 61 72 67 6f 72 70 } //1 margorp
		$a_03_7 = {00 30 00 00 c7 85 90 01 04 03 00 00 00 8d b5 90 01 04 6a 03 ff b5 90 01 04 e8 90 01 04 8b c8 8b d6 e8 90 01 04 c7 85 90 01 04 40 00 00 00 90 00 } //2
		$a_03_8 = {05 f8 00 00 00 0f 80 90 01 04 8b 4d 90 01 01 8b 89 90 01 04 6b c9 28 0f 80 90 01 04 03 c1 0f 80 90 00 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_00_3  & 1)*2+(#a_03_4  & 1)*1+(#a_03_5  & 1)*2+(#a_01_6  & 1)*1+(#a_03_7  & 1)*2+(#a_03_8  & 1)*2) >=5
 
}