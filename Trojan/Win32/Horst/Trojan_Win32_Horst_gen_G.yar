
rule Trojan_Win32_Horst_gen_G{
	meta:
		description = "Trojan:Win32/Horst.gen!G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {8d 4c 24 24 c6 44 24 48 01 c7 44 24 3c 0f 00 00 00 89 5c 24 38 88 5c 24 28 e8 90 01 01 f3 ff ff 90 00 } //3
		$a_03_1 = {8d 94 24 54 04 00 00 52 8d 84 24 40 01 00 00 50 68 90 01 04 68 90 01 04 8b ce e8 90 01 04 6a 02 90 00 } //3
		$a_01_2 = {65 72 31 3d 62 61 63 26 64 3d 00 3f 65 72 6f 6b 3d 31 26 64 3d 00 } //1 牥㴱慢♣㵤㼀牥歯ㄽ搦=
		$a_01_3 = {66 72 69 65 6e 64 69 64 3d 00 00 00 27 29 3b 00 } //1
		$a_01_4 = {45 34 30 44 35 34 31 42 42 30 2d 33 35 43 36 41 33 44 32 36 32 2d 37 44 41 39 36 33 30 44 44 39 2d 42 32 43 46 44 33 35 33 41 33 } //1 E40D541BB0-35C6A3D262-7DA9630DD9-B2CFD353A3
		$a_01_5 = {68 6d 75 6e 6d 6c 32 30 64 6c 2e 65 78 65 00 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}