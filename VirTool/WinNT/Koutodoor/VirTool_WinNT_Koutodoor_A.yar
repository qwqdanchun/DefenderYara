
rule VirTool_WinNT_Koutodoor_A{
	meta:
		description = "VirTool:WinNT/Koutodoor.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0a 00 00 "
		
	strings :
		$a_03_0 = {6a 07 50 68 90 01 04 ff 15 90 01 04 83 c4 0c 85 c0 74 90 01 01 90 03 01 01 46 47 81 90 03 01 01 fe ff 00 30 00 00 90 00 } //1
		$a_03_1 = {6a 07 03 c6 50 68 90 01 04 ff 15 90 01 04 83 c4 0c 85 c0 74 90 01 01 46 81 fe 00 30 00 00 7c 90 00 } //1
		$a_03_2 = {99 f7 7d 0c 8b 45 08 90 03 05 08 32 90 01 01 02 8a 04 02 30 90 01 01 ff 90 00 } //2
		$a_03_3 = {0c 0f 75 07 80 7c 90 01 01 0d 85 74 90 01 02 83 90 01 01 20 90 00 } //2
		$a_01_4 = {83 4d f4 ff c7 45 f0 80 0f 05 fd } //2
		$a_01_5 = {c7 45 f8 00 40 96 d5 c7 45 fc 36 ff ff ff } //2
		$a_03_6 = {3d 44 50 00 00 90 13 3d 45 50 00 00 75 90 00 } //3
		$a_01_7 = {25 ff ff fe ff 0f 22 c0 58 } //1
		$a_02_8 = {8d 45 fc 56 50 e8 90 01 02 00 00 8b 0d 90 01 02 01 00 a1 90 01 02 01 00 8b 51 01 8b 30 8b 14 96 89 15 90 01 02 01 00 8b 49 01 8b 00 c7 04 88 90 01 02 01 00 ff 75 fc e8 90 01 02 00 00 90 00 } //1
		$a_01_9 = {b9 50 45 00 00 39 0c 02 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_03_6  & 1)*3+(#a_01_7  & 1)*1+(#a_02_8  & 1)*1+(#a_01_9  & 1)*1) >=5
 
}