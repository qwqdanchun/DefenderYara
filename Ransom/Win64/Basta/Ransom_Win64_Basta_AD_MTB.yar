
rule Ransom_Win64_Basta_AD_MTB{
	meta:
		description = "Ransom:Win64/Basta.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffc9 00 ffffffc9 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {f1 d5 00 fa 4c 62 cc f4 0f 0b } //64 00 
		$a_03_1 = {48 89 9c 24 80 00 00 00 44 0f be d1 33 db 41 0f b7 ca 66 c7 45 b8 90 01 01 00 66 83 f1 90 01 01 66 89 5d ea 41 0f b7 d2 66 89 4d be 66 83 f2 90 01 01 66 89 4d c6 41 0f b7 c2 66 89 55 c2 66 83 f0 90 01 01 66 89 55 d0 66 89 45 ba 45 0f b7 c2 66 41 83 f0 90 01 01 41 0f b7 ca 41 0f b7 d2 66 44 89 45 c8 66 83 f1 90 01 01 66 44 89 45 cc 66 83 f2 90 01 01 66 89 4d d6 41 0f b7 c2 66 89 55 da 66 83 f0 90 01 01 66 89 4d dc 66 89 45 bc 45 0f b7 ca 66 41 83 f1 90 01 01 66 44 89 45 e2 41 0f b7 c2 66 89 55 e8 66 83 f0 90 01 01 66 44 89 4d c4 66 89 45 c0 4c 8d 45 ba 90 00 } //64 00 
		$a_03_2 = {41 0f b7 c2 66 44 89 4d ce 66 83 f0 90 01 01 66 44 89 4d e6 66 89 45 ca 33 d2 66 89 45 d2 b9 01 00 1f 00 41 0f b7 c2 66 83 f0 90 01 01 66 89 45 d4 41 0f b7 c2 66 83 f0 90 01 01 66 89 45 d8 41 0f b7 c2 66 83 f0 90 01 01 66 89 45 de 41 0f b7 c2 66 83 f0 90 01 01 66 41 83 f2 90 01 01 66 89 45 e0 66 44 89 55 e4 ff 15 90 00 } //00 00 
		$a_00_3 = {5d 04 00 00 33 7c 05 80 5c 33 00 00 34 7c 05 80 00 00 01 00 32 00 1d 00 52 61 6e 73 6f 6d 3a 57 69 6e 36 34 2f 42 61 73 74 61 2e 41 44 21 4d 54 42 21 73 6d 73 00 00 01 40 05 82 70 00 04 00 ce 09 00 00 ed e7 b7 6a 78 48 01 00 7b 5d 04 00 00 34 7c 05 80 5c 2b 00 00 35 7c 05 80 00 00 01 00 32 00 15 00 52 61 6e 73 6f 6d 3a 57 69 6e 36 34 2f 42 61 73 74 61 2e 41 41 00 00 01 40 05 82 70 00 04 00 78 70 00 00 0b 00 0b 00 02 00 00 01 00 0a 01 f1 d5 00 fa 4c 62 cc f4 0f 0b 0a 00 53 03 0f 57 c0 33 c0 48 89 45 70 0f 29 85 b0 00 00 00 f2 0f 10 45 70 f2 0f 11 85 c0 00 00 00 48 8d 95 b0 00 00 00 48 8d 4c 24 } //50 e8 
	condition:
		any of ($a_*)
 
}