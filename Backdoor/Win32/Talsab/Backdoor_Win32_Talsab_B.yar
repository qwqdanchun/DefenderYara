
rule Backdoor_Win32_Talsab_B{
	meta:
		description = "Backdoor:Win32/Talsab.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 "
		
	strings :
		$a_01_0 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 0f 94 45 ff } //2
		$a_03_1 = {84 c0 c7 45 fc ff ff ff ff 8b 45 0c 50 53 6a 00 e8 90 01 03 ff 8b f0 6a 00 68 80 00 00 00 6a 02 6a 00 6a 02 68 00 00 00 40 8d 55 f4 b0 05 e8 90 00 } //2
		$a_03_2 = {ba 44 00 00 00 e8 90 01 03 ff c7 45 b4 44 00 00 00 c7 45 e0 01 00 00 00 66 89 5d e4 8d 45 a4 50 8d 45 b4 50 6a 00 6a 00 68 10 01 00 00 90 00 } //2
		$a_03_3 = {ba 01 00 00 80 8b 45 f8 e8 90 01 03 ff b1 01 ba 90 01 03 00 8b 45 f8 e8 90 01 03 ff 80 eb 05 75 10 8b 4d fc ba 90 01 03 00 8b 45 f8 e8 90 00 } //2
		$a_03_4 = {5c 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 00 90 01 0a 41 70 70 44 61 74 61 00 90 00 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2) >=8
 
}
rule Backdoor_Win32_Talsab_B_2{
	meta:
		description = "Backdoor:Win32/Talsab.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 "
		
	strings :
		$a_03_0 = {b9 3f 00 00 00 8b c3 e8 90 01 04 85 c0 0f 85 90 01 04 83 bd 90 01 04 02 0f 85 90 01 04 8b b5 90 01 04 8b c6 83 e0 10 83 f8 10 0f 84 90 01 04 8d 45 90 01 01 e8 90 01 04 8b c6 83 e0 01 48 75 0d 90 00 } //2
		$a_01_1 = {b8 68 58 4d 56 bb 00 00 00 00 b9 0a 00 00 00 ba 58 56 00 00 ed 81 fb 68 58 4d 56 0f 94 45 ff } //2
		$a_01_2 = {57 69 6e 64 6f 77 73 4c 69 76 65 3a 6e 61 6d 65 3d 2a } //1 WindowsLive:name=*
		$a_02_3 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 20 46 6f 6c 64 65 72 73 00 90 02 10 41 70 70 44 61 74 61 00 90 02 10 4c 6f 63 61 6c 20 41 70 70 44 61 74 61 00 90 00 } //1
		$a_01_4 = {7c 44 49 52 23 30 23 00 } //1 䑼剉〣#
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_02_3  & 1)*1+(#a_01_4  & 1)*1) >=6
 
}