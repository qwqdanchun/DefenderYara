
rule PWS_Win32_Banjori_A{
	meta:
		description = "PWS:Win32/Banjori.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 02 00 29 00 00 02 00 "
		
	strings :
		$a_00_0 = {00 63 6f 6e 66 69 67 64 61 74 61 2e 63 66 67 00 4d 5a 00 } //02 00 
		$a_00_1 = {00 4d 5a 00 72 65 67 64 61 74 65 62 61 73 65 2e 63 66 67 00 00 } //02 00 
		$a_00_2 = {00 4d 5a 00 73 61 76 72 67 2e 70 6f 73 00 00 00 } //02 00 
		$a_00_3 = {00 77 38 00 74 73 74 00 61 70 70 00 64 6d 6e 00 6e 65 74 00 70 72 68 00 70 72 64 } //02 00 
		$a_02_4 = {64 6d 6e 00 77 38 00 90 02 05 6a 62 72 00 61 70 70 90 02 06 00 6e 65 74 00 90 00 } //02 00 
		$a_02_5 = {63 68 65 6b 00 63 68 65 63 6b 00 26 64 61 74 61 3d 00 26 63 68 3d 00 26 69 64 3d 90 01 03 5f 90 00 } //02 00 
		$a_00_6 = {70 72 6f 63 77 69 7a 33 32 2e 6a 70 67 00 5c 75 72 6c 73 70 73 2e 74 78 74 00 5c } //02 00 
		$a_02_7 = {5c 75 72 6c 73 70 73 2e 74 78 74 00 90 01 04 77 69 7a 33 32 2e 6a 70 67 00 90 00 } //02 00 
		$a_00_8 = {75 73 65 72 5f 70 72 65 66 28 22 61 70 70 2e 75 70 64 61 74 65 2e 61 75 74 6f 22 2c 20 66 61 6c 73 65 29 3b 0d 0a 75 73 65 72 5f 70 72 65 66 28 22 61 70 70 2e 75 70 64 61 74 65 2e 65 6e 61 62 6c 65 64 22 2c 20 66 61 6c 73 65 29 3b 0d 0a 75 73 65 72 5f 70 72 65 66 28 22 62 72 6f 77 73 65 72 2e 73 65 61 72 63 68 2e 75 70 64 61 74 65 22 2c 20 66 61 6c 73 65 29 3b 0d 0a 75 73 65 72 5f 70 72 65 66 28 22 65 78 74 65 6e 73 69 6f 6e 73 2e 75 70 64 61 74 65 2e 65 6e 61 62 6c 65 64 22 2c 20 66 61 6c 73 65 29 3b } //01 00 
		$a_00_9 = {00 5c 73 72 76 62 6c 63 6b 35 2e 74 6d 70 00 } //01 00 
		$a_02_10 = {67 65 74 6a 73 65 72 76 32 00 5c 6a 73 65 72 76 2e 74 78 74 00 90 02 12 67 65 74 64 69 63 74 90 00 } //01 00 
		$a_02_11 = {5c 75 72 6c 90 01 03 2e 74 78 74 00 90 02 15 6e 65 77 90 01 05 2e 6a 70 67 00 90 00 } //01 00 
		$a_00_12 = {00 4a 62 72 44 65 6c 65 74 65 00 } //01 00 
		$a_00_13 = {00 4a 62 72 4d 75 74 65 78 44 65 6c 65 74 65 00 } //01 00 
		$a_00_14 = {00 4a 62 72 44 65 6c 65 74 65 4d 75 74 65 78 00 } //01 00 
		$a_00_15 = {00 4a 62 72 43 72 65 61 74 65 4d 75 74 65 78 00 } //01 00 
		$a_00_16 = {00 4a 62 72 53 65 61 72 63 68 44 6f 6d 61 69 6e 00 } //01 00 
		$a_02_17 = {00 4a 62 72 4d 90 02 20 00 4a 62 72 90 02 0f 4d 75 74 65 78 00 4a 62 72 90 00 } //01 00 
		$a_00_18 = {5c 6a 61 62 63 6f 6e 66 33 32 2e 65 78 65 00 } //01 00 
		$a_00_19 = {5c 6b 61 62 63 6f 6e 66 33 32 2e 65 78 65 00 } //01 00 
		$a_00_20 = {74 61 73 6b 00 61 6c 69 76 65 00 } //01 00 
		$a_02_21 = {00 75 74 69 6d 65 00 90 02 15 00 72 65 70 65 61 74 00 90 02 0f 47 75 61 72 64 00 90 00 } //01 00 
		$a_00_22 = {4a 62 72 43 68 63 6b 42 6c 63 6b 73 00 } //01 00 
		$a_00_23 = {00 4a 62 72 75 70 6c 6f 61 64 00 } //01 00 
		$a_00_24 = {00 4a 62 72 4d 75 74 65 78 55 70 6c 6f 61 64 00 } //01 00 
		$a_00_25 = {00 4a 62 72 4d 75 74 65 78 42 48 4f 00 } //01 00 
		$a_02_26 = {25 73 6e 65 74 62 61 6e 6b 5f 25 73 5f 25 73 00 90 02 15 25 73 5c 66 66 90 01 01 5f 25 73 25 64 40 25 73 2e 66 66 78 00 90 00 } //01 00 
		$a_00_27 = {25 73 5c 66 66 78 5f 25 73 25 64 40 25 73 2e 66 66 78 00 25 73 25 73 5c 25 73 5f 55 41 73 25 30 33 64 2e 64 61 74 00 } //01 00 
		$a_00_28 = {76 65 72 73 69 6f 6e 66 00 76 65 72 73 69 6f 6e 61 00 0a 76 65 72 73 69 6f 6e 66 0a 00 0a 76 65 72 73 69 6f 6e 61 0a 00 0a 76 65 6e 64 6f 72 0a } //01 00 
		$a_00_29 = {76 65 6e 64 6f 72 0a 00 0a 76 65 72 73 69 6f 6e 61 0a 00 0a 76 65 72 73 69 6f 6e 66 0a 00 76 65 72 73 69 6f 6e 61 00 76 65 72 73 69 6f 6e 66 00 } //01 00 
		$a_00_30 = {76 65 72 73 69 6f 6e 61 0a 00 0a 76 65 72 73 69 6f 6e 66 0a 00 76 65 72 73 69 6f 6e 66 00 76 65 72 73 69 6f 6e 61 00 0a 76 65 6e 64 6f 72 0a 00 } //02 00 
		$a_00_31 = {53 63 68 65 76 65 72 74 7a 31 12 30 10 06 03 55 04 0b 13 09 53 63 68 65 76 65 72 74 7a 31 12 30 10 06 03 55 04 03 13 09 53 63 68 65 76 65 72 74 7a 31 1e 30 1c 06 09 2a 86 48 86 f7 0d 01 09 01 16 0f 73 75 70 70 6f 72 74 40 73 76 74 7a 2e 64 65 } //02 00 
		$a_03_32 = {81 ff 44 45 55 5f 74 90 01 01 81 ff 46 52 41 5f 74 90 01 01 81 ff 55 53 41 5f 75 90 00 } //01 00 
		$a_03_33 = {50 6a 40 6a 05 ff 75 08 ff 15 90 01 04 85 c0 74 90 01 01 8b 55 08 c6 02 e9 90 02 03 8b 45 0c 2b c2 83 e8 05 89 42 01 90 00 } //01 00 
		$a_01_34 = {3d 64 69 6a 6e 75 } //01 00 
		$a_01_35 = {3d 64 69 6a 6e 74 } //02 00 
		$a_03_36 = {53 68 38 04 00 00 80 78 ff cc 74 01 48 ff d0 89 45 f8 68 90 01 04 ff 75 08 90 00 } //01 00 
		$a_01_37 = {8a 67 06 8a 06 32 e2 32 c2 88 47 06 88 26 } //02 00 
		$a_01_38 = {88 47 0c 88 66 01 d1 c2 8a 67 0b 8a 46 02 32 e2 32 c2 88 47 0b 88 66 02 8a 67 08 8a 46 03 32 e6 32 c6 88 47 08 88 66 03 } //02 00 
		$a_01_39 = {d1 ca 8a 67 09 8a 46 04 32 e2 32 c2 88 47 09 88 66 04 8a 67 0f 8a 46 05 32 e6 32 c6 88 47 0f } //04 00 
		$a_01_40 = {ba a9 c8 d7 80 b8 a7 50 36 79 8b 4d 10 8b 7d 0c } //00 00 
		$a_00_41 = {80 } //10 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Banjori_A_2{
	meta:
		description = "PWS:Win32/Banjori.A,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 25 73 5c 25 73 5f 55 41 73 25 30 33 64 2e 64 61 74 00 25 73 6e 65 74 62 61 6e 6b 5f 25 73 5f 25 73 00 } //01 00 
		$a_01_1 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 30 00 5c 55 73 41 67 74 00 5c 74 61 73 6b 00 } //01 00 
		$a_01_2 = {2e 65 78 65 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 } //01 00 
		$a_01_3 = {2e 65 78 65 00 72 75 6e 61 73 00 5c 63 6d 64 2e 65 78 65 00 2f 63 20 73 74 61 72 74 20 22 22 20 22 25 73 22 20 2d 64 65 6c 20 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}