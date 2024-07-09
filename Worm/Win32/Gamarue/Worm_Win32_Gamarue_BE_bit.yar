
rule Worm_Win32_Gamarue_BE_bit{
	meta:
		description = "Worm:Win32/Gamarue.BE!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {8b 4e 04 03 c7 8a 04 08 32 06 8b 4c 24 14 32 c3 43 88 04 0f 66 3b 5e 02 72 de } //1
		$a_03_1 = {64 8b 35 30 00 00 00 e8 ?? ?? ?? ff 8b 46 0c 8b 40 0c 8b 30 e8 ?? ?? ?? ff ff 76 18 } //1
		$a_03_2 = {8b 10 8b f2 c1 ee ?? 33 f2 69 f6 ?? ?? ?? ?? 03 f1 89 70 04 83 c0 04 41 3d ?? ?? ?? 00 7c e1 } //1
		$a_03_3 = {be ff ff ff 7f 8b ca 8b 04 8d ?? ?? ?? 00 33 04 8d ?? ?? ?? 00 23 c6 33 04 8d ?? ?? ?? 00 8b f8 d1 e8 83 e7 01 33 04 bd ?? ?? ?? 00 33 04 8d ?? ?? ?? 00 42 89 04 8d ?? ?? ?? 00 81 fa ?? 00 00 00 7c c2 } //1
		$a_03_4 = {50 6a 0e e8 ?? ?? ?? 00 8d 85 ?? ?? ?? ff 50 ff 75 08 ff d3 89 46 ?? 8d 85 ?? ?? ?? ff 50 6a 0f e8 ?? ?? ?? 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}