
rule Ransom_Linux_GwisinLocker_A{
	meta:
		description = "Ransom:Linux/GwisinLocker.A,SIGNATURE_TYPE_ELFHSTR_EXT,06 00 06 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {2f 74 6d 70 2f 2e 36 36 34 38 36 66 30 34 2d 62 66 32 34 2d 34 66 35 65 2d 61 65 31 36 2d 30 61 } //01 00 
		$a_01_1 = {66 30 66 64 62 33 64 38 66 65 } //06 00 
		$a_01_2 = {b8 66 65 00 00 c7 84 24 e0 03 00 00 2f 74 6d 70 c7 84 24 e4 03 00 00 2f 2e 36 36 c7 84 24 e8 03 00 00 34 38 36 66 c7 84 24 ec 03 00 00 30 34 2d 62 c7 84 24 f0 03 00 00 66 32 34 2d c7 84 24 f4 03 00 00 34 66 35 65 c7 84 24 f8 03 00 00 2d 61 65 31 c7 84 24 fc 03 00 00 36 2d 30 61 c7 84 24 00 04 00 00 66 30 66 64 c7 84 24 04 04 00 00 62 33 64 38 } //02 00 
		$a_01_3 = {89 f2 c1 ea 18 0f b6 94 13 c0 b1 ff ff 8b 54 95 00 c1 ca 08 89 54 24 08 89 f2 0f b6 fa 8b 54 24 08 0f b6 bc 3b c0 b1 ff ff 33 54 bd 00 89 54 24 08 89 f2 c1 ee 10 0f b6 fe 89 f2 0f b6 f2 0f b6 bc 3b c0 b1 ff ff 0f b6 b4 33 c0 b1 ff ff 8b 7c bd 00 8b 74 b5 00 c1 c7 08 33 7c 24 08 c1 c6 10 31 f7 89 bc 81 f4 00 00 00 } //02 00 
		$a_01_4 = {89 d0 44 0f b6 da 0f b6 de c1 ea 10 c1 e8 18 46 0f b6 1c 1e 0f b6 d2 0f b6 04 06 0f b6 14 16 41 8b 04 80 41 8b 14 90 c1 c8 08 43 33 04 98 44 0f b6 1c 1e c1 c2 10 47 8b 1c 98 41 c1 c3 08 44 31 d8 31 d0 89 87 f0 00 00 00 } //00 00 
		$a_00_5 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}