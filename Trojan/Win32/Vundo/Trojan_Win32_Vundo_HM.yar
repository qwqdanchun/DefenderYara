
rule Trojan_Win32_Vundo_HM{
	meta:
		description = "Trojan:Win32/Vundo.HM,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 07 00 00 "
		
	strings :
		$a_01_0 = {8d 47 20 dd 05 68 55 00 10 51 51 dd 1c 24 68 f0 75 00 10 51 8d 8d fc f7 ff ff 51 50 68 28 55 00 10 8d 85 fc ef ff ff 53 50 ff 15 } //3
		$a_01_1 = {8d 43 20 dd 05 90 35 01 10 83 ec 08 dd 1c 24 68 e0 85 01 10 51 8d 8c 24 20 04 00 00 51 50 68 54 35 01 10 8d 94 24 2c 0c 00 00 68 00 04 00 00 52 e8 } //3
		$a_03_2 = {73 0f 8a 88 ?? ?? ?? 10 30 88 ?? ?? ?? 10 40 eb ec 68 ?? ?? ?? 10 8d 4d d0 (e8|ff 15) ?? ?? ?? ?? 68 e0 93 04 00 ff 15 ?? ?? ?? 10 83 7d e8 10 8b 45 d4 73 03 8d 45 d4 57 57 56 8d 8d d0 fb ff ff 51 50 57 e8 90 09 1c 00 83 f8 } //3
		$a_02_3 = {25 73 3f 71 3d 25 73 26 75 3d 25 73 26 67 3d 25 73 26 76 3d 25 2e 32 66 26 6e 3d ?? ?? ?? 26 61 3d } //1
		$a_00_4 = {31 32 37 2e 30 2e 30 2e 31 3a 34 36 36 34 00 } //1
		$a_00_5 = {5c 63 6f 6d 72 75 73 2e 69 6e 66 00 } //1
		$a_01_6 = {44 9d 00 3d 76 e6 73 43 b7 5f b0 3f 58 34 da f2 } //1
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_03_2  & 1)*3+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_01_6  & 1)*1) >=3
 
}