
rule Ransom_Win32_Teerac_A_{
	meta:
		description = "Ransom:Win32/Teerac.A!!Teerac.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 1a 8d 53 fc 33 c9 8b c6 85 d2 74 0f 90 90 81 38 ef be ad de 74 29 41 40 3b ca 72 f2 } //01 00 
		$a_03_1 = {8b 8b 28 02 00 00 8a 14 08 8b 4d fc 80 f2 90 01 01 88 14 01 40 3b 86 90 01 04 72 e5 90 00 } //01 00 
		$a_01_2 = {81 fb 41 50 33 32 75 0b 8b 5e 04 83 fb 18 } //01 00 
		$a_01_3 = {ff d3 83 f8 ff 75 0a 6a 64 ff d7 46 83 fe 64 7c ef } //01 00 
		$a_00_4 = {53 00 3a 00 28 00 4d 00 4c 00 3b 00 3b 00 4e 00 52 00 4e 00 57 00 4e 00 58 00 3b 00 3b 00 3b 00 4c 00 57 00 29 00 } //01 00 
		$a_01_5 = {72 61 63 6b 65 74 65 65 72 } //9c ff 
		$a_01_6 = {04 1b b9 45 d9 bf 4e fb 0c a0 fd 63 37 51 db 8a } //9c ff 
		$a_01_7 = {1b 1e 84 b0 21 b5 8a 47 29 d1 06 9b a2 84 80 bb } //9c ff 
		$a_01_8 = {0f 66 8f b0 f0 f0 02 b7 74 c7 dd bd 76 9e e5 b1 } //9c ff 
		$a_01_9 = {09 16 82 54 62 be a1 55 94 45 0e 89 7e 8d 3a e6 } //9c ff 
		$a_01_10 = {02 26 e6 bd a7 6d ae 71 1e 3d b2 32 1e 3b 53 08 } //9c ff 
		$a_01_11 = {01 7c a1 9b 58 59 e8 3f 44 d8 74 c1 ce 50 6e 6d } //9c ff 
		$a_01_12 = {33 00 00 00 4e a1 d8 07 70 a9 bb e9 44 00 00 00 00 00 4e } //05 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Teerac_A__2{
	meta:
		description = "Ransom:Win32/Teerac.A!!Teerac.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 0d 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c5 89 45 fc 53 68 90 01 04 b8 20 00 00 00 8d 5d 90 01 01 e8 90 00 } //01 00 
		$a_03_1 = {33 c5 89 45 fc 53 56 57 68 90 01 04 b8 19 00 00 00 8d 5d 90 01 01 e8 90 00 } //01 00 
		$a_03_2 = {75 38 53 68 90 01 04 b8 11 00 00 00 8d 5d 90 01 01 e8 90 00 } //01 00 
		$a_03_3 = {eb 0a 8d a4 24 00 00 00 00 8d 49 00 68 90 01 04 b8 18 00 00 00 8d 5d 90 01 01 e8 90 00 } //01 00 
		$a_03_4 = {74 07 68 98 3a 00 00 ff d7 68 90 01 04 b8 18 00 00 00 8d 5d 90 01 01 e8 90 00 } //01 00 
		$a_03_5 = {be 06 00 00 00 f7 f6 66 0f be 92 90 01 04 66 89 14 4b eb 13 be 14 00 00 00 f7 f6 66 0f be 82 90 01 04 66 89 04 4b 90 00 } //9c ff 
		$a_01_6 = {04 1b b9 45 d9 bf 4e fb 0c a0 fd 63 37 51 db 8a } //9c ff 
		$a_01_7 = {1b 1e 84 b0 21 b5 8a 47 29 d1 06 9b a2 84 80 bb } //9c ff 
		$a_01_8 = {0f 66 8f b0 f0 f0 02 b7 74 c7 dd bd 76 9e e5 b1 } //9c ff 
		$a_01_9 = {09 16 82 54 62 be a1 55 94 45 0e 89 7e 8d 3a e6 } //9c ff 
		$a_01_10 = {02 26 e6 bd a7 6d ae 71 1e 3d b2 32 1e 3b 53 08 } //9c ff 
		$a_01_11 = {01 7c a1 9b 58 59 e8 3f 44 d8 74 c1 ce 50 6e 6d } //9c ff 
		$a_01_12 = {33 00 00 00 4e a1 d8 07 70 a9 bb e9 44 00 00 00 00 00 4e } //05 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Teerac_A__3{
	meta:
		description = "Ransom:Win32/Teerac.A!!Teerac.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,05 00 05 00 14 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 4e 01 80 f9 36 75 1e 8d 46 02 80 38 34 75 16 ff 85 90 01 02 ff ff 8b f0 89 bd 90 01 02 ff ff 89 bd 90 01 02 ff ff eb 90 01 01 80 f9 33 75 0c 8d 46 02 80 38 32 75 04 90 00 } //01 00 
		$a_02_1 = {2f 00 2f 00 20 00 3c 00 21 00 2d 00 2d 00 20 00 3c 00 6d 00 64 00 62 00 3a 00 6d 00 6f 00 72 00 6b 00 3a 00 7a 00 20 00 76 00 3d 00 22 00 90 02 04 22 00 2f 00 3e 00 20 00 2d 00 2d 00 3e 00 90 00 } //01 00 
		$a_02_2 = {2f 2f 20 3c 21 2d 2d 20 3c 6d 64 62 3a 6d 6f 72 6b 3a 7a 20 76 3d 22 90 02 04 22 2f 3e 20 2d 2d 3e 90 00 } //01 00 
		$a_80_3 = {72 61 63 6b 2d 63 6f 72 65 2e 62 69 6e } //rack-core.bin  01 00 
		$a_80_4 = {65 79 75 69 6f 61 } //eyuioa  01 00 
		$a_80_5 = {71 77 72 74 70 73 64 66 67 68 6a 6b 6c 7a 78 63 76 62 6e 6d } //qwrtpsdfghjklzxcvbnm  01 00 
		$a_80_6 = {66 69 78 6d 79 66 69 6c 65 73 2e 72 75 } //fixmyfiles.ru  01 00 
		$a_80_7 = {43 72 79 70 74 6f 4c 6f 63 6b 65 72 } //CryptoLocker  01 00 
		$a_80_8 = {2e 65 6e 63 72 79 70 74 65 64 } //.encrypted  01 00 
		$a_80_9 = {76 73 73 61 64 6d 69 6e 2e 65 78 65 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 41 6c 6c 20 2f 51 75 69 65 74 } //vssadmin.exe Delete Shadows /All /Quiet  01 00 
		$a_80_10 = {73 61 73 37 62 64 61 74 } //sas7bdat  01 00 
		$a_80_11 = {70 73 61 66 65 33 } //psafe3  01 00 
		$a_80_12 = {2f 74 6f 70 69 63 2e 70 68 70 } ///topic.php  9c ff 
		$a_01_13 = {04 1b b9 45 d9 bf 4e fb 0c a0 fd 63 37 51 db 8a } //9c ff 
		$a_01_14 = {1b 1e 84 b0 21 b5 8a 47 29 d1 06 9b a2 84 80 bb } //9c ff 
		$a_01_15 = {0f 66 8f b0 f0 f0 02 b7 74 c7 dd bd 76 9e e5 b1 } //9c ff 
		$a_01_16 = {09 16 82 54 62 be a1 55 94 45 0e 89 7e 8d 3a e6 } //9c ff 
		$a_01_17 = {02 26 e6 bd a7 6d ae 71 1e 3d b2 32 1e 3b 53 08 } //9c ff 
		$a_01_18 = {01 7c a1 9b 58 59 e8 3f 44 d8 74 c1 ce 50 6e 6d } //9c ff 
		$a_01_19 = {33 00 00 00 4e a1 d8 07 70 a9 bb e9 44 00 00 00 00 00 4e } //05 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Teerac_A__4{
	meta:
		description = "Ransom:Win32/Teerac.A!!Teerac.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 0e 00 00 05 00 "
		
	strings :
		$a_00_0 = {61 00 76 00 69 00 00 00 77 00 61 00 76 00 00 00 6d 00 70 00 33 00 00 00 67 00 69 00 66 00 00 00 69 00 63 00 6f 00 00 00 70 00 6e 00 67 00 00 00 62 00 6d 00 70 00 00 00 69 00 6e 00 66 00 00 00 6d 00 61 00 6e 00 69 00 66 00 65 00 73 00 74 00 00 00 00 00 63 00 68 00 6d 00 00 00 } //05 00 
		$a_00_1 = {41 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 77 00 61 00 73 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 77 00 69 00 74 00 68 00 20 00 43 00 72 00 79 00 70 00 74 00 6f 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 21 00 0d 00 } //05 00 
		$a_00_2 = {42 00 69 00 74 00 20 00 54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 20 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 5c 00 43 00 6f 00 6e 00 66 00 69 00 67 00 75 00 72 00 61 00 74 00 69 00 6f 00 6e 00 00 00 } //01 00 
		$a_00_3 = {65 00 78 00 65 00 00 00 2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 00 00 00 00 } //01 00 
		$a_80_4 = {21 21 21 20 59 4f 55 52 20 53 59 53 54 45 4d 20 49 53 20 48 41 43 4b 45 44 20 21 21 21 } //!!! YOUR SYSTEM IS HACKED !!!  01 00 
		$a_00_5 = {21 21 21 20 53 49 53 54 45 4d 49 4e 49 5a 20 48 41 43 4b 4c 45 4e 44 49 20 21 21 21 } //01 00 
		$a_00_6 = {58 3a 5c 72 61 63 6b 65 74 65 65 72 5c } //9c ff 
		$a_01_7 = {04 1b b9 45 d9 bf 4e fb 0c a0 fd 63 37 51 db 8a } //9c ff 
		$a_01_8 = {1b 1e 84 b0 21 b5 8a 47 29 d1 06 9b a2 84 80 bb } //9c ff 
		$a_01_9 = {0f 66 8f b0 f0 f0 02 b7 74 c7 dd bd 76 9e e5 b1 } //9c ff 
		$a_01_10 = {09 16 82 54 62 be a1 55 94 45 0e 89 7e 8d 3a e6 } //9c ff 
		$a_01_11 = {02 26 e6 bd a7 6d ae 71 1e 3d b2 32 1e 3b 53 08 } //9c ff 
		$a_01_12 = {01 7c a1 9b 58 59 e8 3f 44 d8 74 c1 ce 50 6e 6d } //9c ff 
		$a_01_13 = {33 00 00 00 4e a1 d8 07 70 a9 bb e9 44 00 00 00 00 00 4e } //05 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Teerac_A__5{
	meta:
		description = "Ransom:Win32/Teerac.A!!Teerac.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 13 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 0c 06 30 08 8b 4d fc 42 40 3b d1 72 f2 8b 45 ec 40 89 45 ec 3d 00 04 00 00 7c b6 33 c0 85 c9 74 1e 83 7d f8 00 74 22 8b 75 f0 8a 14 38 8b 5d 14 ff 4d f8 88 14 1e } //01 00 
		$a_01_1 = {8d 4f 08 8b c3 89 55 dc 8b 14 06 33 11 8b 18 89 19 8b 5d e0 89 14 03 8b 55 dc 83 c1 04 03 d1 83 c0 04 3b 57 04 7c e1 } //02 00 
		$a_03_2 = {56 56 6a 01 56 ff 15 90 01 04 b8 4d 5a 00 00 66 39 05 90 01 04 74 05 89 75 e4 eb 36 a1 90 01 04 81 b8 90 01 04 50 45 00 00 75 ea b9 0b 01 00 00 66 39 88 90 01 04 75 dc 83 b8 90 01 04 0e 76 d3 90 00 } //01 00 
		$a_00_3 = {2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00 
		$a_00_4 = {2f 00 74 00 6f 00 70 00 69 00 63 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_00_5 = {43 00 72 00 79 00 70 00 74 00 6f 00 4c 00 6f 00 63 00 6b 00 65 00 72 00 } //01 00 
		$a_00_6 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 53 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00 
		$a_00_7 = {6c 00 65 00 62 00 61 00 6e 00 6f 00 6e 00 77 00 61 00 72 00 72 00 69 00 6f 00 72 00 2e 00 72 00 75 00 } //01 00 
		$a_00_8 = {6d 00 6f 00 6e 00 65 00 79 00 77 00 65 00 6c 00 6c 00 } //01 00 
		$a_00_9 = {73 00 61 00 73 00 37 00 62 00 64 00 61 00 74 00 } //01 00 
		$a_00_10 = {76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 20 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //01 00 
		$a_00_11 = {79 00 63 00 62 00 63 00 72 00 61 00 } //9c ff 
		$a_01_12 = {04 1b b9 45 d9 bf 4e fb 0c a0 fd 63 37 51 db 8a } //9c ff 
		$a_01_13 = {1b 1e 84 b0 21 b5 8a 47 29 d1 06 9b a2 84 80 bb } //9c ff 
		$a_01_14 = {0f 66 8f b0 f0 f0 02 b7 74 c7 dd bd 76 9e e5 b1 } //9c ff 
		$a_01_15 = {09 16 82 54 62 be a1 55 94 45 0e 89 7e 8d 3a e6 } //9c ff 
		$a_01_16 = {02 26 e6 bd a7 6d ae 71 1e 3d b2 32 1e 3b 53 08 } //9c ff 
		$a_01_17 = {01 7c a1 9b 58 59 e8 3f 44 d8 74 c1 ce 50 6e 6d } //9c ff 
		$a_01_18 = {33 00 00 00 4e a1 d8 07 70 a9 bb e9 44 00 00 00 00 00 4e } //05 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Teerac_A__6{
	meta:
		description = "Ransom:Win32/Teerac.A!!Teerac.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,0f 00 0f 00 22 00 00 01 00 "
		
	strings :
		$a_00_0 = {44 00 45 00 43 00 52 00 59 00 50 00 54 00 5f 00 49 00 4e 00 53 00 54 00 52 00 55 00 43 00 54 00 49 00 4f 00 4e 00 53 00 2e 00 68 00 74 00 6d 00 6c 00 } //01 00 
		$a_00_1 = {2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00 
		$a_00_2 = {44 00 65 00 6c 00 65 00 74 00 65 00 20 00 53 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 41 00 6c 00 6c 00 20 00 2f 00 51 00 75 00 69 00 65 00 74 00 } //01 00 
		$a_00_3 = {5f 63 72 65 61 74 65 5f 65 6e 63 64 65 63 5f 74 68 72 64 } //01 00 
		$a_00_4 = {5f 64 69 73 70 6c 61 79 5f 72 61 6e 73 6f 6d 5f 70 61 67 65 } //01 00 
		$a_00_5 = {5f 64 72 6f 70 5f 72 61 6e 73 6f 6d 5f 70 61 67 65 } //01 00 
		$a_00_6 = {5f 65 6e 63 64 65 63 5f 66 69 6c 65 5f 64 61 74 61 } //01 00 
		$a_00_7 = {5f 65 6e 75 6d 5f 66 69 6c 65 73 5f 63 62 } //01 00 
		$a_00_8 = {5f 65 78 74 65 72 6e 61 6c 5f 64 69 73 70 6c 61 79 5f 72 61 6e 73 6f 6d 5f 70 61 67 65 } //01 00 
		$a_00_9 = {5f 67 65 74 5f 6c 63 66 67 5f 66 69 6c 65 5f 70 61 74 68 } //01 00 
		$a_00_10 = {5f 6c 63 66 67 5f 67 65 74 5f 76 61 6c 5f 66 69 6c 65 } //01 00 
		$a_00_11 = {5f 6c 63 66 67 5f 73 65 74 5f 76 61 6c 5f 66 69 6c 65 } //01 00 
		$a_00_12 = {5f 6f 6e 5f 62 65 66 6f 72 65 5f 65 6e 63 72 79 70 74 69 6f 6e 5f } //01 00 
		$a_00_13 = {5f 6f 6e 5f 65 6e 63 72 79 70 74 69 6f 6e 5f 77 6f 72 6b } //01 00 
		$a_00_14 = {5f 70 72 6f 63 65 73 73 5f 64 65 73 6b 74 6f 70 5f 66 69 6c 65 73 } //01 00 
		$a_00_15 = {5f 70 72 6f 63 65 73 73 5f 70 63 5f 66 69 6c 65 73 } //01 00 
		$a_00_16 = {5f 73 65 74 5f 64 65 63 72 79 70 74 65 64 5f 66 69 6c 65 5f 6e 61 6d 65 } //01 00 
		$a_00_17 = {5f 73 65 74 5f 65 6e 63 72 79 70 74 65 64 5f 66 69 6c 65 5f 6e 61 6d 65 } //01 00 
		$a_00_18 = {5f 77 61 69 74 5f 66 6f 72 5f 70 72 6f 63 65 73 73 69 6e 67 5f 74 68 72 64 73 } //01 00 
		$a_00_19 = {72 61 63 6b 5f 63 68 65 63 6b 5f 61 6e 64 5f 73 65 74 5f 69 6e 73 74 61 6e 63 65 } //01 00 
		$a_00_20 = {72 61 63 6b 5f 65 6e 63 72 79 70 74 5f 70 63 } //01 00 
		$a_00_21 = {72 61 63 6b 5f 67 65 74 5f 72 61 6e 73 6f 6d 5f 70 61 67 65 } //01 00 
		$a_00_22 = {72 61 63 6b 5f 69 6e 73 74 61 6c 6c } //01 00 
		$a_00_23 = {72 61 63 6b 5f 6c 63 66 67 5f 67 65 74 5f 64 72 6f 70 70 65 72 5f 70 65 } //01 00 
		$a_00_24 = {72 61 63 6b 5f 73 65 74 5f 65 78 65 63 5f 65 76 65 6e 74 } //01 00 
		$a_00_25 = {72 61 63 6b 5f 73 68 6f 77 5f 67 75 69 } //01 00 
		$a_00_26 = {72 61 63 6b 5f 75 6e 69 6e 73 74 61 6c 6c } //9c ff 
		$a_01_27 = {04 1b b9 45 d9 bf 4e fb 0c a0 fd 63 37 51 db 8a } //9c ff 
		$a_01_28 = {1b 1e 84 b0 21 b5 8a 47 29 d1 06 9b a2 84 80 bb } //9c ff 
		$a_01_29 = {0f 66 8f b0 f0 f0 02 b7 74 c7 dd bd 76 9e e5 b1 } //9c ff 
		$a_01_30 = {09 16 82 54 62 be a1 55 94 45 0e 89 7e 8d 3a e6 } //9c ff 
		$a_01_31 = {02 26 e6 bd a7 6d ae 71 1e 3d b2 32 1e 3b 53 08 } //9c ff 
		$a_01_32 = {01 7c a1 9b 58 59 e8 3f 44 d8 74 c1 ce 50 6e 6d } //9c ff 
		$a_01_33 = {33 00 00 00 4e a1 d8 07 70 a9 bb e9 44 00 00 00 00 00 4e } //05 00 
	condition:
		any of ($a_*)
 
}