
rule VirTool_Win32_VBInject_gen_BH{
	meta:
		description = "VirTool:Win32/VBInject.gen!BH,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0f 00 00 "
		
	strings :
		$a_03_0 = {66 0f b6 0c 08 8b 95 ?? ?? ff ff 8b 45 ?? 66 33 0c 50 } //2
		$a_03_1 = {b9 59 00 00 00 ff d6 8b 55 ?? b9 58 00 00 00 88 02 ff d6 8b 4d ?? 88 41 01 b9 51 00 00 00 } //2
		$a_03_2 = {89 85 78 ff ff ff b9 f8 00 00 00 [0-07] 8a d0 8b 45 e0 8b 7d e4 8b 48 0c 8a 04 19 8b cf 22 d0 } //2
		$a_03_3 = {ff ff 01 00 00 00 c7 85 ?? ?? ff ff 02 00 00 00 89 5d ?? 89 85 ?? ff ff ff c7 85 ?? ff ff ff 08 00 00 00 74 ?? 66 83 39 01 75 } //1
		$a_01_4 = {66 3b 75 a0 7f 5e 8b 07 8d 4d c8 0f bf d6 51 52 50 c7 45 d0 01 00 00 00 c7 45 c8 02 00 00 00 } //1
		$a_03_5 = {b9 c3 00 00 00 ff d6 88 45 ?? 8d 45 ?? 50 e8 ?? ?? ?? ?? b9 cc 00 00 00 ff d6 } //2
		$a_03_6 = {8b 40 3c 03 c3 89 45 ?? 8b 45 ?? 8b 40 28 03 c3 c6 00 b8 40 03 5f 14 89 18 83 c0 04 66 c7 00 ff e0 } //2
		$a_03_7 = {6a 01 89 08 8b 4d ?? 89 50 04 8b 55 ?? 89 48 08 8d 4d ?? 89 50 0c 8d 45 ?? 50 51 } //2
		$a_03_8 = {8b 49 0c 68 f8 00 00 00 03 c8 8d 95 ?? ?? ff ff 51 52 e8 ?? ?? ?? ?? ff d7 8d 85 ?? ?? ff ff 50 ff ?? 81 bd ?? ?? ff ff 50 45 00 00 } //2
		$a_00_9 = {53 00 62 00 69 00 65 00 44 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 00 00 } //1
		$a_00_10 = {26 00 48 00 43 00 43 00 00 00 } //1
		$a_00_11 = {41 75 64 69 74 20 43 6f 6d 6d 61 6e 64 65 72 } //-10 Audit Commander
		$a_00_12 = {70 74 72 61 66 66 65 72 2e 72 75 2f 00 } //-100
		$a_00_13 = {70 54 72 61 66 66 65 72 2e 75 63 4c 69 73 74 56 69 65 77 } //-100 pTraffer.ucListView
		$a_00_14 = {43 00 61 00 6e 00 6e 00 6f 00 74 00 20 00 70 00 72 00 65 00 70 00 61 00 72 00 65 00 20 00 74 00 68 00 65 00 20 00 65 00 72 00 72 00 6f 00 72 00 20 00 6e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 20 00 65 00 6d 00 61 00 69 00 6c 00 2e 00 20 00 50 00 6c 00 65 00 61 00 73 00 65 00 20 00 63 00 6f 00 70 00 79 00 20 00 74 00 68 00 65 00 20 00 69 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 20 00 61 00 6e 00 64 00 20 00 73 00 65 00 6e 00 64 00 20 00 74 00 6f 00 20 00 48 00 79 00 64 00 72 00 6f 00 43 00 6f 00 6d 00 70 00 20 00 62 00 79 00 20 00 73 00 65 00 70 00 61 00 72 00 61 00 74 00 65 00 20 00 65 00 6d 00 61 00 69 00 6c 00 } //-888 Cannot prepare the error notification email. Please copy the information and send to HydroComp by separate email
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2+(#a_03_7  & 1)*2+(#a_03_8  & 1)*2+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*-10+(#a_00_12  & 1)*-100+(#a_00_13  & 1)*-100+(#a_00_14  & 1)*-888) >=4
 
}