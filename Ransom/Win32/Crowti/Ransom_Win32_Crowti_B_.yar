
rule Ransom_Win32_Crowti_B_{
	meta:
		description = "Ransom:Win32/Crowti.B!!Crowti.B,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 0c 68 01 00 01 00 6a 00 8d 85 ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 8b 88 94 00 00 00 ff d1 89 45 f8 83 7d f8 00 } //1
		$a_01_1 = {9b 85 e7 e3 ca 85 53 0b } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}
rule Ransom_Win32_Crowti_B__2{
	meta:
		description = "Ransom:Win32/Crowti.B!!Crowti.B,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 05 00 00 "
		
	strings :
		$a_00_0 = {21 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 21 00 00 00 01 00 00 00 70 00 75 00 62 00 00 00 73 00 74 00 61 00 72 00 74 00 00 00 66 00 69 00 6e 00 69 00 73 00 68 00 00 00 00 00 75 00 72 00 6c 00 00 00 74 00 6f 00 72 00 75 00 72 00 6c 00 00 00 } //1
		$a_00_1 = {25 55 53 45 52 5f 43 4f 44 45 25 00 25 54 4f 52 5f 53 45 52 56 49 43 45 5f 55 52 4c 25 00 00 00 25 53 45 52 56 49 43 45 5f 55 52 4c 25 00 } //1
		$a_00_2 = {3c 74 69 74 6c 65 3e 43 72 79 70 74 6f 44 65 66 65 6e 73 65 } //1 <title>CryptoDefense
		$a_00_3 = {3e 43 00 72 79 70 74 6f 44 65 66 c0 65 6e 73 65 3c } //1
		$a_00_4 = {63 72 79 70 74 65 64 20 10 62 79 20 43 01 14 6f 44 65 00 66 65 6e 73 65 20 53 6f 08 66 74 77 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1) >=2
 
}
rule Ransom_Win32_Crowti_B__3{
	meta:
		description = "Ransom:Win32/Crowti.B!!Crowti.B,SIGNATURE_TYPE_ARHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {b9 2a 00 00 00 8b 55 f8 66 89 0c 02 8b 45 fc 50 8b 4d f8 51 6a 00 6a 02 6a 02 e8 f3 f9 ff ff 83 c4 14 85 c0 74 07 c7 45 f4 01 00 00 00 } //1
		$a_01_1 = {b9 02 00 00 00 6b d1 07 b8 2e 00 00 00 8b 4d fc 66 89 04 11 ba 02 00 00 00 c1 e2 03 b8 65 00 00 00 8b 4d fc 66 89 04 11 ba 02 00 00 00 6b c2 09 b9 78 00 00 00 8b 55 fc 66 89 0c 02 b8 02 00 00 00 6b c8 0a ba 65 00 00 00 8b 45 fc } //1
		$a_01_2 = {b8 53 00 00 00 66 89 45 ac b9 59 00 00 00 66 89 4d ae ba 53 00 00 00 66 89 55 b0 b8 54 00 00 00 66 89 45 b2 b9 45 00 00 00 66 89 4d b4 ba 4d 00 00 00 66 89 55 b6 b8 44 00 00 00 66 89 45 b8 b9 52 00 00 00 66 89 4d ba ba 49 00 00 00 66 89 55 bc b8 56 00 00 00 66 89 45 be b9 45 00 00 00 66 89 4d c0 33 d2 66 89 55 c2 c7 45 e4 00 00 00 00 c7 45 c4 00 00 00 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=2
 
}
rule Ransom_Win32_Crowti_B__4{
	meta:
		description = "Ransom:Win32/Crowti.B!!Crowti.B,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 09 00 00 "
		
	strings :
		$a_00_0 = {48 00 45 00 4c 00 50 00 5f 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 54 00 58 00 54 00 } //1 HELP_DECRYPT.TXT
		$a_00_1 = {48 00 45 00 4c 00 50 00 5f 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 48 00 54 00 4d 00 4c 00 } //1 HELP_DECRYPT.HTML
		$a_00_2 = {48 00 45 00 4c 00 50 00 5f 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 55 00 52 00 4c 00 } //1 HELP_DECRYPT.URL
		$a_00_3 = {48 00 45 00 4c 00 50 00 5f 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 2e 00 50 00 4e 00 47 00 } //1 HELP_DECRYPT.PNG
		$a_01_4 = {c6 45 f4 63 c6 45 f5 72 c6 45 f6 79 c6 45 f7 70 c6 45 f8 74 c6 45 f9 31 } //2
		$a_01_5 = {c6 45 e4 61 c6 45 e5 6c c6 45 e6 6c c6 45 e7 3d c6 45 e8 25 c6 45 e9 64 } //2
		$a_03_6 = {89 45 f8 81 7d f8 1a 00 00 80 0f 84 ?? ?? ?? ?? 81 7d f8 23 00 00 c0 74 ?? 81 7d f8 05 00 00 80 75 ?? 83 7d ec 00 74 } //1
		$a_01_7 = {3d 8b 11 4d c9 75 07 c7 45 e4 01 00 00 00 } //1
		$a_01_8 = {b8 60 88 06 00 25 00 f0 ff ff 89 45 fc 8b 4d fc 0f b7 11 81 fa 4d 5a 00 00 74 0d } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_03_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=5
 
}
rule Ransom_Win32_Crowti_B__5{
	meta:
		description = "Ransom:Win32/Crowti.B!!Crowti.B,SIGNATURE_TYPE_ARHSTR_EXT,0c 00 0c 00 05 00 00 "
		
	strings :
		$a_00_0 = {43 00 52 00 59 00 50 00 54 00 4c 00 49 00 53 00 54 00 00 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 2e 00 54 00 58 00 54 00 00 00 } //10
		$a_00_1 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 2e 00 48 00 54 00 4d 00 4c 00 00 00 00 00 44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 2e 00 55 00 52 00 4c 00 00 00 } //10
		$a_01_2 = {c6 45 f4 63 c6 45 f5 77 c6 45 f6 34 c6 45 f7 30 c6 45 f8 30 c6 45 f9 00 6a 28 e8 } //1
		$a_01_3 = {c6 45 e8 7b c6 45 e9 25 c6 45 ea 64 c6 45 eb 7c c6 45 ec 25 c6 45 ed 73 c6 45 ee 7c c6 45 ef 25 c6 45 f0 73 c6 45 f1 7d c6 45 f2 00 } //1
		$a_01_4 = {c6 45 e0 20 c6 45 e1 44 c6 45 e2 65 c6 45 e3 6c c6 45 e4 65 c6 45 e5 74 c6 45 e6 65 c6 45 e7 20 c6 45 e8 53 c6 45 e9 68 c6 45 ea 61 c6 45 eb 64 c6 45 ec 6f c6 45 ed 77 c6 45 ee 73 c6 45 ef 20 c6 45 f0 2f c6 45 f1 41 c6 45 f2 6c c6 45 f3 6c c6 45 f4 20 c6 45 f5 2f c6 45 f6 51 c6 45 f7 75 c6 45 f8 69 c6 45 f9 65 c6 45 fa 74 c6 45 fb 00 } //2
	condition:
		((#a_00_0  & 1)*10+(#a_00_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2) >=12
 
}