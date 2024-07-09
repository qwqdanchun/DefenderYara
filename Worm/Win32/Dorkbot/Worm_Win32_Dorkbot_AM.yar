
rule Worm_Win32_Dorkbot_AM{
	meta:
		description = "Worm:Win32/Dorkbot.AM,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 "
		
	strings :
		$a_03_0 = {8b 50 04 8b 7d ?? 0f b6 f1 8a 14 32 32 10 32 d1 fe c1 88 14 3e 3a 48 01 72 e6 } //2
		$a_03_1 = {6a 07 68 00 08 00 00 ff d0 8d 45 ?? 50 6a ?? ?? e8 ?? ?? ?? ?? 8d 45 ?? 50 e8 90 09 07 00 6a 04 68 } //1
		$a_03_2 = {6a 07 68 00 08 00 00 ff d7 8d 85 ?? ?? ff ff 50 6a 08 56 e8 ?? ?? ?? ?? 8d 85 ?? ?? ff ff 50 e8 90 09 07 00 6a 04 68 } //1
		$a_03_3 = {8a 1c 06 32 1d ?? ?? ?? ?? 32 da fe c2 88 18 40 3a d1 72 ec } //2
		$a_03_4 = {6a 07 68 00 08 00 00 ff 55 ?? 8a 0d ?? ?? ?? ?? 32 d2 84 c9 76 ?? 8b 35 90 09 07 00 6a 04 68 } //1
		$a_03_5 = {6a 07 68 00 08 00 00 ff d7 8a 0d ?? ?? ?? ?? 32 d2 84 c9 76 ?? 8b 35 90 09 07 00 6a 04 68 } //1
		$a_03_6 = {8b 06 89 18 47 8b c7 6b c0 14 39 98 ?? ?? ?? ?? 75 } //1
		$a_03_7 = {8b 04 be 6a 2d 59 66 3b 08 75 ?? 0f b7 40 02 83 f8 64 74 ?? 83 f8 75 75 } //1
		$a_00_8 = {54 68 65 72 65 20 77 65 72 65 20 6e 6f 20 66 6f 6c 64 65 72 73 20 6f 6e 20 74 68 65 20 55 53 42 20 64 72 69 76 65 20 74 6f 20 69 6e 66 65 63 74 21 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*2+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_00_8  & 1)*1) >=3
 
}