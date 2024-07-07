
rule Ransom_Win32_Urausy_E{
	meta:
		description = "Ransom:Win32/Urausy.E,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 "
		
	strings :
		$a_03_0 = {81 3e 53 45 4c 46 0f 84 90 01 04 81 3e 00 50 4b 00 90 00 } //1
		$a_01_1 = {89 f7 83 c9 ff 31 c0 f2 ae c7 47 fb 2e 69 6e 69 56 ff 93 } //1
		$a_03_2 = {c7 01 00 10 00 00 6a 40 68 00 10 00 00 51 50 57 6a ff ff 93 90 01 02 00 00 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=1
 
}
rule Ransom_Win32_Urausy_E_2{
	meta:
		description = "Ransom:Win32/Urausy.E,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_01_0 = {60 b9 00 10 00 00 ff 74 0e ff 58 d0 c0 34 11 8b d8 } //1
		$a_03_1 = {b9 0d 00 00 00 83 c0 01 6a 00 68 90 01 04 68 90 02 01 63 6f 6d 90 02 01 68 90 01 04 8b f9 03 fc 4f 8b 3f 81 e7 ff 00 00 00 8b df 8b d6 03 d1 88 5c 02 ff e2 e7 83 c4 10 61 90 00 } //1
		$a_03_2 = {68 04 01 00 00 56 8b 90 01 01 e4 01 00 00 ff d0 e8 90 01 01 00 00 00 ff 90 01 01 70 01 00 00 ff 14 24 ff 90 01 01 80 01 00 00 6a 00 56 ff 90 01 01 24 08 50 ff 90 01 01 70 01 00 00 ff 14 24 58 58 90 02 0f 68 00 02 00 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}
rule Ransom_Win32_Urausy_E_3{
	meta:
		description = "Ransom:Win32/Urausy.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 "
		
	strings :
		$a_00_0 = {00 63 3a 5c 74 65 6d 70 5c 66 69 6c 6f 74 66 2e 74 78 74 00 00 } //1
		$a_00_1 = {30 00 66 00 77 00 77 00 65 00 67 00 64 00 33 00 5f 00 32 00 66 00 65 00 6c 00 66 00 6b 00 6b 00 6b 00 6b 00 6b 00 6b 00 6b 00 6b 00 6b 00 6b 00 6b 00 00 00 } //1
		$a_01_2 = {83 c4 04 89 45 e8 83 7d e8 63 72 0a 8b 4d 08 } //2
		$a_03_3 = {c7 45 e8 00 00 40 00 c7 45 fc 90 01 04 c7 45 dc 00 00 00 00 c7 45 f0 00 00 00 00 c7 45 ec 00 00 00 00 c7 45 c4 90 01 02 00 00 8f 45 c0 c7 45 bc 00 00 00 00 eb 09 8b 55 bc 83 c2 01 89 55 bc 83 7d bc 0a 90 00 } //2
		$a_03_4 = {89 45 cc ff 75 cc ff 15 90 01 01 30 40 00 c7 45 f4 90 01 01 18 00 00 83 7d f4 00 74 17 c7 45 d4 3a 00 00 00 c7 45 e0 10 00 00 00 8b 0d 90 01 01 30 40 00 89 4d d8 90 00 } //2
		$a_03_5 = {40 00 c7 45 90 01 02 18 00 00 c7 45 90 01 01 3a 00 00 00 c7 45 90 01 01 10 00 00 00 8b 90 01 03 40 00 89 90 01 01 d4 c7 45 90 01 01 00 00 40 00 c7 45 fc 90 01 04 c7 45 c0 90 01 02 00 00 8f 45 bc c7 45 90 01 01 00 00 00 00 eb 09 8b 55 b8 83 c2 01 89 55 b8 83 7d b8 0a 73 0b 90 00 } //2
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_01_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2+(#a_03_5  & 1)*2) >=3
 
}