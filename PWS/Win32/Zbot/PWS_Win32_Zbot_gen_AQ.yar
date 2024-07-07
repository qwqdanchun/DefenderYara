
rule PWS_Win32_Zbot_gen_AQ{
	meta:
		description = "PWS:Win32/Zbot.gen!AQ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 "
		
	strings :
		$a_01_0 = {48 80 3c 08 50 75 15 80 7c 08 01 4b 75 0e 80 7c 08 02 05 75 07 80 7c 08 03 06 } //1
		$a_01_1 = {66 83 38 2d 75 16 0f b7 40 02 83 f8 6e 74 0a 83 f8 74 75 08 } //1
		$a_01_2 = {83 ff 71 74 13 81 ff 9a 02 00 00 74 0b } //1
		$a_01_3 = {8a 44 0d 0c 30 44 14 18 41 33 c0 3b cb 0f 44 c8 42 83 fa 08 72 ea } //1
		$a_03_4 = {74 29 66 0f be c2 8d 4e 12 51 66 83 c0 41 66 89 01 ff 15 90 01 04 83 f8 03 74 21 83 f8 04 74 1c 83 f8 02 90 00 } //1
		$a_03_5 = {eb 07 83 25 90 01 04 00 83 3d 90 01 04 00 0f 84 90 01 02 00 00 a1 90 01 04 a9 e0 0f 00 00 0f 84 90 01 02 00 00 a9 00 08 00 00 74 90 01 01 90 03 01 01 b9 68 b8 01 00 00 90 00 } //1
		$a_03_6 = {eb 08 33 db 89 90 01 04 00 83 3d 90 01 04 00 0f 84 90 01 01 00 00 00 a1 90 01 04 a9 e0 0f 00 00 0f 84 90 01 01 00 00 00 a8 20 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1) >=3
 
}