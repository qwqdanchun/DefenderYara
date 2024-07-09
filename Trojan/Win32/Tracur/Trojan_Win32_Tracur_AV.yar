
rule Trojan_Win32_Tracur_AV{
	meta:
		description = "Trojan:Win32/Tracur.AV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0c 00 00 "
		
	strings :
		$a_01_0 = {6d 3d 25 73 26 7a 3d 25 73 } //1 m=%s&z=%s
		$a_01_1 = {72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 2c 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 00 00 00 43 68 65 63 6b 65 72 } //2
		$a_01_2 = {5c 64 72 69 76 65 72 73 5c 6e 75 6c 6c 2e 73 79 73 } //1 \drivers\null.sys
		$a_01_3 = {26 66 6d 74 3d 74 65 78 74 00 00 00 26 64 3d } //1
		$a_01_4 = {67 6f 6f 67 6c 65 2e 00 71 3d 00 00 2f 23 00 00 2f 73 65 61 72 63 68 3f } //1
		$a_03_5 = {72 75 6e 64 6c 6c 33 32 (2e 65 78 65|) 20 22 25 73 22 2c 25 73 00 90 05 04 01 00 43 68 65 63 6b 65 72 00 } //2
		$a_03_6 = {8a 4c 16 01 32 8b ?? ?? ?? ?? 88 0c 10 42 43 3b d7 72 e6 } //1
		$a_03_7 = {8a 08 80 f9 75 75 06 ff 74 24 14 eb 09 80 f9 72 75 0e ff 74 24 30 83 c0 02 e8 ?? ?? ?? ?? eb ?? 80 f9 74 75 ?? 83 c0 02 } //2
		$a_09_8 = {8b 5d f8 80 3c 1f 6b 75 36 80 7c 1f 01 31 75 2f 80 7c 1f 02 20 75 28 80 7c 1f 03 3d 75 21 80 7c 1f 04 22 } //2
		$a_01_9 = {8b c8 c1 e8 06 33 c8 42 42 0f b7 02 66 85 c0 75 e4 6b c9 09 8b c1 c1 e8 0b 33 c1 69 c0 01 80 00 00 } //2
		$a_01_10 = {68 74 74 70 3a 2f 2f 25 73 2f 63 67 69 2d 62 69 6e 2f 69 6e 64 65 78 3f 25 64 00 00 72 75 6e 64 6c 6c 33 32 2e 65 78 65 } //1
		$a_09_11 = {00 71 6b 77 3d 00 } //1 焀睫=
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*2+(#a_03_6  & 1)*1+(#a_03_7  & 1)*2+(#a_09_8  & 1)*2+(#a_01_9  & 1)*2+(#a_01_10  & 1)*1+(#a_09_11  & 1)*1) >=4
 
}