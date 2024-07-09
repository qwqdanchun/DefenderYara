
rule Trojan_Win32_Totbrick_H_{
	meta:
		description = "Trojan:Win32/Totbrick.H!!Totbrick.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 10 00 00 "
		
	strings :
		$a_01_0 = {c7 06 5a 49 50 41 } //1
		$a_03_1 = {83 f8 06 0f 85 ?? ?? 00 00 81 7d ?? 6d 63 63 6f 0f 85 ?? ?? 00 00 b9 6e 66 00 00 } //1
		$a_03_2 = {76 65 72 00 0f 85 ?? ?? 00 00 } //1
		$a_01_3 = {67 74 61 67 75 } //1 gtagu
		$a_03_4 = {73 65 72 76 75 ?? 66 83 7d ?? 73 } //1
		$a_03_5 = {61 75 74 6f 75 ?? 81 7d ?? 72 75 6e 00 } //1
		$a_01_6 = {eb 12 3c c0 75 05 80 fc a8 eb 07 3c a9 75 07 80 fc fe 75 02 } //2
		$a_01_7 = {39 51 04 75 2c 8b 41 18 8b 40 04 3c 0a 74 20 } //1
		$a_03_8 = {10 66 00 00 c7 45 ?? 20 00 00 00 8d 4b 08 8d 7d ?? f3 a5 8d 4d fc } //1
		$a_01_9 = {8b 01 3d 73 00 54 00 75 12 81 79 04 61 00 72 00 } //1
		$a_01_10 = {3d 73 00 74 00 75 10 81 79 04 41 00 72 00 } //1
		$a_01_11 = {32 d1 8b 4d f8 c0 e0 06 02 45 ff 88 55 09 66 8b 55 08 66 89 11 88 41 02 } //1
		$a_03_12 = {8b f0 81 fe ?? ?? 00 00 0f 84 ?? ?? 00 00 81 fe ?? ?? 00 00 74 ?? 81 fe ?? ?? 00 00 74 ?? 68 40 9c 00 00 ff 15 ?? ?? ?? ?? eb } //2
		$a_03_13 = {58 68 66 c7 45 ?? 50 e9 89 55 ?? e8 ?? ?? ff ff } //2
		$a_03_14 = {75 16 68 30 75 00 00 ff 15 ?? ?? ?? ?? 47 83 ff 05 7c ca } //1
		$a_03_15 = {74 33 8b 4d 10 8b 55 0c 57 8d 45 fc 50 a1 ?? ?? ?? ?? 51 8b 88 ec 00 00 00 52 56 ff d1 } //3
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_03_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_03_12  & 1)*2+(#a_03_13  & 1)*2+(#a_03_14  & 1)*1+(#a_03_15  & 1)*3) >=3
 
}