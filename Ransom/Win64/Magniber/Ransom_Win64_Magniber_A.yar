
rule Ransom_Win64_Magniber_A{
	meta:
		description = "Ransom:Win64/Magniber.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 48 8b f4 48 83 e4 f0 48 83 ec 20 e8 90 01 04 48 8b e6 5e c3 90 02 06 b8 90 01 02 00 00 0f 05 c3 90 02 06 b8 90 01 02 00 00 0f 05 c3 90 00 } //01 00 
		$a_00_1 = {77 00 69 00 6e 00 6e 00 74 00 00 00 2e 00 00 00 2e 00 2e 00 00 00 5c 00 00 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 68 00 74 00 6d 00 6c 00 00 00 } //01 00 
		$a_00_2 = {3d 20 6e 65 77 20 41 72 72 61 79 28 } //01 00 
		$a_00_3 = {66 72 6f 6d 43 68 61 72 43 6f 64 65 } //01 00 
		$a_00_4 = {72 65 67 69 73 74 72 61 74 69 6f 6e 3e 3c 2f 73 63 72 69 70 74 6c 65 74 3e 00 } //01 00 
		$a_00_5 = {20 2f 69 3a 2e 2e 2f 2e 2e 2f 2e 2e 2f } //00 00 
		$a_00_6 = {78 e1 00 00 } //06 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win64_Magniber_A_2{
	meta:
		description = "Ransom:Win64/Magniber.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 48 8b f4 48 83 e4 f0 48 83 ec 20 e8 90 01 04 48 8b e6 5e c3 90 02 06 b8 90 01 02 00 00 0f 05 c3 90 02 06 b8 90 01 02 00 00 0f 05 c3 90 00 } //01 00 
		$a_00_1 = {77 00 69 00 6e 00 6e 00 74 00 00 00 2e 00 00 00 2e 00 2e 00 00 00 5c 00 00 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 68 00 74 00 6d 00 6c 00 00 00 } //01 00 
		$a_00_2 = {3d 20 6e 65 77 20 41 72 72 61 79 28 } //01 00 
		$a_00_3 = {66 72 6f 6d 43 68 61 72 43 6f 64 65 } //01 00 
		$a_03_4 = {23 40 7e 5e 90 02 04 41 41 41 3d 3d 90 00 } //01 00 
		$a_02_5 = {2f 00 45 00 3a 00 56 00 42 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 65 00 20 00 90 02 04 2e 00 2e 00 2f 00 2e 00 2e 00 2f 00 90 00 } //00 00 
		$a_00_6 = {78 3c 01 00 } //06 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win64_Magniber_A_3{
	meta:
		description = "Ransom:Win64/Magniber.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {56 48 8b f4 48 83 e4 f0 48 83 ec 20 e8 90 01 04 48 8b e6 5e c3 90 02 06 b8 90 01 02 00 00 0f 05 c3 90 02 06 b8 90 01 02 00 00 0f 05 c3 90 00 } //01 00 
		$a_00_1 = {77 00 69 00 6e 00 6e 00 74 00 00 00 2e 00 00 00 2e 00 2e 00 00 00 5c 00 00 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 68 00 74 00 6d 00 6c 00 00 00 } //01 00 
		$a_00_2 = {3d 20 6e 65 77 20 41 72 72 61 79 28 } //01 00 
		$a_00_3 = {66 72 6f 6d 43 68 61 72 43 6f 64 65 } //01 00 
		$a_00_4 = {45 00 6c 00 65 00 76 00 61 00 74 00 69 00 6f 00 6e 00 3a 00 41 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 21 00 6e 00 65 00 77 00 3a 00 7b 00 33 00 45 00 35 00 46 00 43 00 37 00 46 00 39 00 2d 00 39 00 41 00 35 00 31 00 2d 00 34 00 33 00 36 00 37 00 2d 00 39 00 30 00 36 00 33 00 2d 00 41 00 31 00 32 00 30 00 32 00 34 00 34 00 46 00 42 00 45 00 43 00 37 00 7d 00 } //01 00 
		$a_03_5 = {3c 2f 68 74 6d 6c 3e 00 e8 00 00 00 00 58 48 83 e8 05 48 2d 90 01 02 00 00 c3 90 00 } //00 00 
		$a_00_6 = {5d 04 00 00 } //26 62 
	condition:
		any of ($a_*)
 
}