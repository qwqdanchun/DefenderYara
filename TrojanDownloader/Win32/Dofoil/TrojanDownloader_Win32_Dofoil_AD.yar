
rule TrojanDownloader_Win32_Dofoil_AD{
	meta:
		description = "TrojanDownloader:Win32/Dofoil.AD,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0f 00 00 "
		
	strings :
		$a_01_0 = {c7 44 24 1c 25 73 25 73 } //1
		$a_01_1 = {c7 44 24 20 46 46 00 00 } //1
		$a_01_2 = {c7 44 24 10 2e 65 78 65 } //1
		$a_03_3 = {25 30 38 58 88 ?? ec 89 ?? e4 89 ?? e8 8b 45 fc 35 } //2
		$a_03_4 = {8b 0f 8d 77 04 89 4c 24 ?? 80 f9 3c 74 04 3b c8 7c 08 3b c8 0f 8d ?? ?? 00 00 6a 04 51 8d 54 24 ?? c7 44 24 } //2
		$a_01_5 = {c7 44 24 10 7c 3a 7c 00 } //1
		$a_01_6 = {c7 44 24 18 25 73 00 00 } //1
		$a_03_7 = {b8 4d 5a 00 00 66 39 03 0f 85 ?? ?? 00 00 81 fd 00 02 00 00 0f 8e ?? ?? 00 00 b9 08 02 00 00 e8 ?? ?? 00 00 83 3d ?? ?? ?? ?? 04 8b e8 75 } //2
		$a_03_8 = {25 73 25 73 90 09 07 00 c7 84 24 } //1
		$a_01_9 = {c7 46 01 3a 64 07 b2 } //1
		$a_03_10 = {25 30 32 78 90 09 04 00 c7 44 24 } //1
		$a_03_11 = {3a 64 07 b2 90 09 07 00 c7 84 24 } //1
		$a_03_12 = {2e 62 69 74 90 09 03 00 c7 45 } //1
		$a_03_13 = {25 73 25 30 68 ?? ?? ?? ?? 8d 45 ?? c7 45 f0 38 58 25 30 50 8d 45 ?? c7 45 ?? 38 58 00 00 } //2
		$a_03_14 = {25 30 32 58 90 09 03 00 c7 45 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*2+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*2+(#a_03_14  & 1)*1) >=5
 
}