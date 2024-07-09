
rule PWS_Win32_Lmir_O{
	meta:
		description = "PWS:Win32/Lmir.O,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_01_0 = {8d 45 f8 c6 45 f8 e9 50 56 57 88 5d f9 88 5d fa 88 5d fb 88 5d fc } //1
		$a_03_1 = {32 c0 c6 45 f8 e9 88 45 f9 88 45 fa 88 45 fb 88 45 fc 89 35 ?? ?? ?? 10 83 05 ?? ?? ?? 10 05 8d 45 f8 50 56 } //1
		$a_03_2 = {53 55 56 8b 74 24 10 57 66 8b 46 06 66 3d 21 00 74 0a 66 3d 35 00 0f 85 ?? ?? 00 00 66 81 7e 10 aa 0f } //1
		$a_03_3 = {8b 74 24 08 57 8d 3c 30 3b f7 73 ?? 81 3e 44 ff 44 ff 75 } //1
		$a_03_4 = {81 3e 6a 00 6a 00 75 ?? 81 7e 04 6a 00 52 83 } //1
		$a_03_5 = {81 3e 0f b7 42 08 75 ?? 81 7e 04 0f b7 4a 0a 75 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=4
 
}