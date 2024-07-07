
rule Ransom_Win64_Magniber_AD_MTB{
	meta:
		description = "Ransom:Win64/Magniber.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 0c 00 00 "
		
	strings :
		$a_03_0 = {48 33 c1 eb 90 0a 05 00 48 33 c1 90 13 48 23 e0 90 13 48 8b ec 90 13 48 83 ec 10 90 13 48 33 db 90 13 48 c7 c7 90 01 04 90 13 48 89 7d f0 90 13 48 89 5d f8 90 13 6a 40 90 13 68 00 10 00 00 90 00 } //1
		$a_03_1 = {4c 8d 4d f0 90 13 4d 33 c0 90 13 48 8d 55 f8 90 13 48 33 c0 90 13 48 c7 c0 90 01 04 90 13 48 c7 c1 90 01 04 90 13 48 33 c8 90 00 } //1
		$a_03_2 = {48 83 ec 10 90 13 48 33 db 90 13 48 c7 c7 90 01 04 90 13 48 89 7d f0 90 13 48 89 5d f8 90 13 6a 40 90 13 68 00 10 00 00 90 00 } //1
		$a_03_3 = {4c 8d 4d f0 90 13 4d 33 c0 90 13 48 8d 55 f8 90 13 48 b9 ff ff ff ff ff ff ff ff 90 13 e8 90 00 } //1
		$a_03_4 = {48 ff c6 eb 90 0a 05 00 48 ff c6 90 13 48 ff c7 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 8a a6 90 01 04 90 13 32 a6 90 01 04 90 13 32 90 01 01 90 13 8a 90 01 01 90 13 88 27 90 13 48 ff c6 90 00 } //2
		$a_03_5 = {48 ff c6 e9 90 0a 05 00 48 ff c6 90 13 48 ff c7 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 8a a6 90 01 04 90 13 32 a6 90 01 04 90 13 32 90 01 01 90 13 8a 90 01 01 90 13 88 27 90 13 48 ff c6 90 00 } //2
		$a_03_6 = {48 ff c6 e9 90 0a 05 00 48 ff c6 90 13 48 ff c7 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 8a a6 90 01 04 90 13 32 e0 90 13 80 f4 43 90 13 88 27 90 13 8a c4 90 13 48 ff c6 90 00 } //2
		$a_03_7 = {48 ff c6 e9 90 0a 05 00 48 ff c6 90 13 48 ff c7 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 8a a6 90 01 04 90 13 32 a6 90 01 04 90 13 32 e0 90 13 8a c4 90 13 88 27 90 13 48 ff c6 90 00 } //2
		$a_03_8 = {49 ff c6 e9 90 0a 05 00 49 ff c6 90 13 49 ff c5 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 41 8a 86 90 01 04 90 13 41 32 86 90 01 04 90 13 32 c2 90 13 8a d0 90 13 41 88 45 00 90 13 49 ff c6 90 00 } //2
		$a_03_9 = {49 ff c6 eb 90 0a 05 00 49 ff c6 90 13 49 ff c5 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 41 8a 86 90 01 04 90 13 41 32 86 90 01 04 90 13 32 c2 90 13 8a d0 90 13 41 88 45 00 90 13 49 ff c6 90 00 } //2
		$a_03_10 = {48 ff c6 eb 90 0a 05 00 48 ff c6 90 13 48 ff c7 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 8a 86 90 01 04 90 13 32 86 90 01 04 90 13 32 c2 90 13 8a d0 90 13 88 07 90 13 48 ff c6 90 00 } //2
		$a_03_11 = {48 ff c6 e9 90 0a 05 00 48 ff c6 90 13 48 ff c7 90 13 48 ff c1 90 13 48 81 f9 90 01 04 90 13 90 13 8a 86 90 01 04 90 13 32 86 90 01 04 90 13 32 c2 90 13 8a d0 90 13 88 07 90 13 48 ff c6 90 00 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*2+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2+(#a_03_7  & 1)*2+(#a_03_8  & 1)*2+(#a_03_9  & 1)*2+(#a_03_10  & 1)*2+(#a_03_11  & 1)*2) >=2
 
}