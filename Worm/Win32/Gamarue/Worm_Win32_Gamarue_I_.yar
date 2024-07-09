
rule Worm_Win32_Gamarue_I_{
	meta:
		description = "Worm:Win32/Gamarue.I!!Gamarue.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 08 00 00 "
		
	strings :
		$a_01_0 = {68 6c 6f 6c 00 8b c4 50 6a 00 68 01 00 1f 00 ff 55 } //1
		$a_03_1 = {68 64 6c 6c 00 68 64 6c 6c 2e 68 73 62 69 65 8b c4 50 ff 55 ?? 83 c4 0c 85 c0 0f 85 } //1
		$a_03_2 = {b0 68 aa 8b 45 08 2b 45 ?? 03 45 ?? ab b0 c3 aa c7 85 ?? ?? ff ff 02 00 01 00 8d 85 ?? ?? ff ff 50 } //1
		$a_03_3 = {03 40 3c 8d 40 18 8b 40 38 89 45 ?? 33 c9 89 4d ?? 51 68 00 00 00 08 6a 40 90 09 03 00 8b 45 } //1
		$a_03_4 = {c0 bd f0 ff c7 45 ?? ff ff ff ff 8d 45 ?? 50 6a 00 e8 ?? ?? 00 00 33 c9 89 4d ?? 89 4d ?? 6a 40 51 6a 01 8d 45 ?? 50 51 51 51 8d 45 ?? 50 } //1
		$a_01_5 = {64 8b 15 30 00 00 00 8b 52 18 68 04 01 00 00 6a 08 52 ff d0 } //1
		$a_03_6 = {ff d0 03 45 ?? c7 00 5c 2a 2e 64 (c7 40 04|83 c0 04 c7 00) 6c 6c 00 00 } //1
		$a_03_7 = {8b c8 8b 45 0c 89 38 f3 a4 b0 e9 aa 8d 46 ?? 2b c7 ab } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1) >=2
 
}