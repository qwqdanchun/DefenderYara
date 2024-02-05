
rule TrojanDownloader_Win32_Promon_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Promon.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 0f 00 60 00 00 01 00 "
		
	strings :
		$a_00_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_00_1 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //05 00 
		$a_00_2 = {50 00 52 00 4f 00 47 00 52 00 41 00 7e 00 31 00 5c 00 53 00 6c 00 61 00 77 00 64 00 6f 00 67 00 5c 00 53 00 4d 00 41 00 52 00 54 00 53 00 7e 00 31 00 3b 00 43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 } //05 00 
		$a_00_3 = {56 00 69 00 63 00 74 00 69 00 6d 00 4e 00 61 00 6d 00 65 00 3d 00 6d 00 } //03 00 
		$a_00_4 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 64 00 72 00 73 00 } //02 00 
		$a_00_5 = {70 00 72 00 6f 00 6d 00 6f 00 2e 00 64 00 6f 00 6c 00 6c 00 61 00 72 00 72 00 65 00 76 00 65 00 6e 00 75 00 65 00 2e 00 63 00 6f 00 6d 00 } //02 00 
		$a_00_6 = {70 72 6f 6d 6f 2e 64 6f 6c 6c 61 72 72 65 76 65 6e 75 65 2e 63 6f 6d } //01 00 
		$a_01_7 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00 
		$a_00_8 = {6f 00 61 00 64 00 2e 00 61 00 } //01 00 
		$a_00_9 = {5f 00 6e 00 5f 00 75 00 26 00 69 00 } //01 00 
		$a_00_10 = {6f 00 61 00 64 00 5f 00 73 00 74 00 61 00 } //02 00 
		$a_00_11 = {74 00 73 00 2e 00 61 00 73 00 70 00 3f 00 61 00 3d 00 61 00 5f 00 6e 00 5f 00 75 00 26 00 65 00 78 00 65 00 3d 00 } //02 00 
		$a_00_12 = {61 00 64 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 } //02 00 
		$a_00_13 = {74 00 73 00 2e 00 61 00 73 00 70 00 3f 00 65 00 78 00 65 00 3d 00 } //01 00 
		$a_00_14 = {61 00 64 00 5f 00 65 00 69 00 } //01 00 
		$a_00_15 = {6e 00 64 00 65 00 2e 00 61 00 } //02 00 
		$a_00_16 = {64 00 5f 00 64 00 2e 00 61 00 73 00 70 00 3f 00 61 00 3d 00 64 00 26 00 69 00 64 00 3d 00 } //02 00 
		$a_00_17 = {2f 00 73 00 6d 00 61 00 72 00 } //02 00 
		$a_00_18 = {61 00 74 00 73 00 5f 00 64 00 2e 00 61 00 73 00 70 00 3f 00 6e 00 61 00 61 00 6d 00 3d 00 } //01 00 
		$a_00_19 = {26 00 6c 00 61 00 6e 00 64 00 3d 00 } //01 00 
		$a_00_20 = {6c 00 6f 00 61 00 64 00 5f 00 73 00 } //02 00 
		$a_00_21 = {74 00 61 00 74 00 73 00 2e 00 61 00 73 00 70 00 3f 00 61 00 3d 00 61 00 5f 00 75 00 26 00 65 00 78 00 65 00 3d 00 } //0a 00 
		$a_00_22 = {68 00 7c 00 7c 00 74 00 7c 00 7c 00 74 00 7c 00 7c 00 70 00 7c 00 7c 00 7c 00 7c 00 3a 00 2f 00 7c 00 7c 00 2f 00 7c 00 7c 00 70 00 7c 00 7c 00 72 00 7c 00 7c 00 6f 00 7c 00 7c 00 6d 00 7c 00 7c 00 6f 00 7c 00 7c 00 2e 00 7c 00 7c 00 64 00 7c 00 7c 00 6f 00 7c 00 7c 00 6c 00 7c 00 7c 00 6c 00 7c 00 7c 00 61 00 7c 00 7c 00 72 00 7c 00 7c 00 } //05 00 
		$a_00_23 = {72 00 2e 00 7c 00 7c 00 65 00 2e 00 7c 00 7c 00 76 00 7c 00 7c 00 2e 00 7c 00 7c 00 65 00 7c 00 7c 00 2e 00 7c 00 7c 00 6e 00 7c 00 7c 00 2e 00 7c 00 7c 00 75 00 7c 00 7c 00 2e 00 7c 00 7c 00 65 00 7c 00 7c 00 } //0a 00 
		$a_00_24 = {7c 00 7c 00 2e 00 7c 00 7c 00 63 00 7c 00 7c 00 6f 00 7c 00 7c 00 6d 00 7c 00 7c 00 2f 00 7c 00 7c 00 62 00 7c 00 7c 00 75 00 7c 00 7c 00 6e 00 7c 00 7c 00 64 00 7c 00 7c 00 6c 00 7c 00 7c 00 65 00 7c 00 7c 00 2f 00 7c 00 7c 00 6c 00 7c 00 7c 00 6f 00 7c 00 7c 00 61 00 7c 00 7c 00 64 00 7c 00 7c 00 65 00 7c 00 7c 00 72 00 7c 00 7c 00 2e 00 7c 00 7c 00 65 00 7c 00 7c 00 78 00 7c 00 7c 00 65 00 7c 00 7c 00 } //0a 00 
		$a_00_25 = {68 00 7b 00 7b 00 74 00 7b 00 7b 00 74 00 7b 00 7b 00 70 00 7b 00 7b 00 7b 00 7b 00 3a 00 2f 00 7b 00 7b 00 2f 00 7b 00 7b 00 70 00 7b 00 7b 00 72 00 7b 00 7b 00 6f 00 7b 00 7b 00 6d 00 7b 00 7b 00 6f 00 7b 00 7b 00 2e 00 7b 00 7b 00 64 00 7b 00 7b 00 6f 00 7b 00 7b 00 6c 00 7b 00 7b 00 6c 00 7b 00 7b 00 61 00 7b 00 7b 00 72 00 7b 00 7b 00 } //0a 00 
		$a_00_26 = {72 00 2e 00 7b 00 7b 00 65 00 2e 00 7b 00 7b 00 76 00 7b 00 7b 00 2e 00 7b 00 7b 00 65 00 7b 00 7b 00 2e 00 7b 00 7b 00 6e 00 7b 00 7b 00 2e 00 7b 00 7b 00 75 00 7b 00 7b 00 2e 00 7b 00 7b 00 65 00 7b 00 7b 00 } //0a 00 
		$a_00_27 = {7b 00 7b 00 2e 00 7b 00 7b 00 63 00 7b 00 7b 00 6f 00 7b 00 7b 00 6d 00 7b 00 7b 00 2f 00 7b 00 7b 00 62 00 7b 00 7b 00 75 00 7b 00 7b 00 6e 00 7b 00 7b 00 64 00 7b 00 7b 00 6c 00 7b 00 7b 00 65 00 7b 00 7b 00 2f 00 7b 00 7b 00 6c 00 7b 00 7b 00 6f 00 7b 00 7b 00 61 00 7b 00 7b 00 64 00 7b 00 7b 00 65 00 7b 00 7b 00 72 00 7b 00 7b 00 2e 00 7b 00 7b 00 65 00 7b 00 7b 00 78 00 7b 00 7b 00 65 00 7b 00 7b 00 } //0a 00 
		$a_00_28 = {3c 73 63 72 69 70 74 20 6c 61 6e 67 75 61 67 65 3d 22 4a 61 76 61 53 63 72 69 70 74 22 20 74 79 70 65 3d 22 74 65 78 74 2f 4a 61 76 61 53 63 72 69 70 74 22 20 73 72 63 3d 22 20 68 74 74 70 3a 2f 2f 70 72 6f 6d 6f 2e 64 6f 6c 6c 61 72 72 65 76 65 6e 75 65 2e 63 6f 6d 2f 64 72 73 6d 61 72 74 6c 6f 61 64 5f 6a 73 2e 61 73 70 3f 69 64 3d } //0a 00 
		$a_00_29 = {6c 6f 61 64 66 69 72 73 74 3d 30 26 72 65 63 75 72 72 65 6e 63 65 3d 61 6c 77 61 79 73 26 72 65 74 72 79 3d 32 26 72 65 74 72 79 5f 6d 65 73 3d 59 6f 75 25 32 30 6d 75 73 74 25 32 30 63 6c 69 63 6b 25 32 30 59 65 73 25 32 30 74 6f 25 32 30 61 63 63 65 73 73 25 32 30 74 68 69 73 25 32 30 63 6f 6e 74 65 6e 74 22 3e 3c 2f 73 63 72 69 70 74 3e 3c 73 63 72 69 70 74 20 6c 61 6e 67 75 61 67 65 3d 22 4a 61 76 61 53 63 72 69 70 74 22 20 74 79 70 65 3d 22 74 65 78 74 2f 4a 61 76 61 53 63 72 69 70 74 22 3e 20 73 65 6c 66 2e 66 6f 63 75 73 28 29 3b 22 3e 3c 2f 73 63 72 69 70 74 3e } //02 00 
		$a_00_30 = {63 3a 5c 64 72 73 6d 61 72 74 6c 6f 61 64 31 2e 65 78 65 } //02 00 
		$a_00_31 = {25 73 5c 64 72 73 6d 61 72 74 6c 6f 61 64 32 2e 64 61 74 } //02 00 
		$a_00_32 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 64 72 73 6d 61 72 74 6c 6f 61 64 32 } //02 00 
		$a_00_33 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 44 6f 77 6e 6c 6f 61 64 4d 61 6e 61 67 65 72 } //01 00 
		$a_00_34 = {25 25 63 6f 6d 73 70 65 63 25 25 } //01 00 
		$a_00_35 = {40 65 63 68 6f 20 6f 66 66 } //01 00 
		$a_00_36 = {3a 72 65 70 65 61 74 } //01 00 
		$a_00_37 = {64 65 6c 20 2f 46 20 2f 51 20 22 25 25 31 } //01 00 
		$a_00_38 = {69 66 20 65 78 69 73 74 20 22 25 25 31 22 20 67 6f 74 6f 20 72 65 70 65 61 74 } //01 00 
		$a_00_39 = {64 65 6c 20 2f 46 20 2f 51 20 22 25 73 } //01 00 
		$a_00_40 = {25 73 64 65 6c 6d 65 2e 62 61 74 } //05 00 
		$a_00_41 = {68 00 2d 00 2d 00 74 00 2d 00 2d 00 74 00 2d 00 2d 00 70 00 2d 00 2d 00 2d 00 2d 00 3a 00 2f 00 2d 00 2d 00 2f 00 2d 00 2d 00 70 00 2d 00 2d 00 72 00 2d 00 2d 00 6f 00 2d 00 2d 00 6d 00 2d 00 2d 00 6f 00 2d 00 2d 00 2e 00 2d 00 2d 00 64 00 2d 00 2d 00 6f 00 2d 00 2d 00 6c 00 2d 00 2d 00 6c 00 2d 00 2d 00 61 00 2d 00 2d 00 72 00 2d 00 2d 00 } //05 00 
		$a_00_42 = {72 00 2e 00 2d 00 2d 00 65 00 2e 00 2d 00 2d 00 76 00 2d 00 2d 00 2e 00 2d 00 2d 00 65 00 2d 00 2d 00 2e 00 2d 00 2d 00 6e 00 2d 00 2d 00 2e 00 2d 00 2d 00 75 00 2d 00 2d 00 2e 00 2d 00 2d 00 65 00 2d 00 2d 00 } //05 00 
		$a_00_43 = {2d 00 2d 00 2e 00 2d 00 2d 00 63 00 2d 00 2d 00 6f 00 2d 00 2d 00 6d 00 2d 00 2d 00 2f 00 2d 00 2d 00 62 00 2d 00 2d 00 75 00 2d 00 2d 00 6e 00 2d 00 2d 00 64 00 2d 00 2d 00 6c 00 2d 00 2d 00 65 00 2d 00 2d 00 2f 00 2d 00 2d 00 6c 00 2d 00 2d 00 6f 00 2d 00 2d 00 61 00 2d 00 2d 00 64 00 2d 00 2d 00 65 00 2d 00 2d 00 72 00 2d 00 2d 00 2e 00 2d 00 2d 00 65 00 2d 00 2d 00 78 00 2d 00 2d 00 65 00 2d 00 2d 00 } //05 00 
		$a_00_44 = {63 00 2a 00 2a 00 3a 00 2a 00 2a 00 5c 00 2a 00 2a 00 64 00 2a 00 2a 00 72 00 2a 00 2a 00 73 00 2a 00 2a 00 6d 00 2a 00 2a 00 61 00 2a 00 2a 00 72 00 2a 00 2a 00 74 00 2a 00 2a 00 6c 00 2a 00 2a 00 6f 00 2a 00 2a 00 61 00 2a 00 2a 00 64 00 2a 00 2a 00 2e 00 2a 00 2a 00 65 00 2a 00 2a 00 78 00 2a 00 2a 00 65 00 20 00 31 00 30 00 36 00 } //02 00 
		$a_00_45 = {39 00 38 00 75 00 69 00 34 00 33 00 65 00 72 00 66 00 39 00 75 00 38 00 64 00 69 00 35 00 34 00 72 00 65 00 38 00 64 00 39 00 75 00 35 00 34 00 39 00 72 00 75 00 64 00 38 00 39 00 35 00 72 00 75 00 38 00 6a 00 69 00 72 00 66 00 64 00 38 00 39 00 75 00 35 00 34 00 69 00 66 00 38 00 39 00 75 00 69 00 35 00 34 00 38 00 39 00 75 00 72 00 } //05 00 
		$a_00_46 = {68 00 3a 00 3a 00 74 00 3a 00 3a 00 74 00 3a 00 3a 00 70 00 3a 00 3a 00 3a 00 3a 00 3a 00 2f 00 3a 00 3a 00 2f 00 3a 00 3a 00 70 00 3a 00 3a 00 72 00 3a 00 3a 00 6f 00 3a 00 3a 00 6d 00 3a 00 3a 00 6f 00 3a 00 3a 00 2e 00 3a 00 3a 00 64 00 3a 00 3a 00 6f 00 3a 00 3a 00 6c 00 3a 00 3a 00 6c 00 3a 00 3a 00 61 00 3a 00 3a 00 72 00 } //05 00 
		$a_00_47 = {72 00 2e 00 3a 00 3a 00 65 00 2e 00 3a 00 3a 00 76 00 3a 00 3a 00 2e 00 3a 00 3a 00 65 00 3a 00 3a 00 2e 00 3a 00 3a 00 6e 00 3a 00 3a 00 2e 00 3a 00 3a 00 75 00 3a 00 3a 00 2e 00 3a 00 3a 00 65 00 } //05 00 
		$a_00_48 = {63 00 3a 00 3a 00 6f 00 3a 00 3a 00 6d 00 3a 00 3a 00 2f 00 3a 00 3a 00 62 00 3a 00 3a 00 75 00 3a 00 3a 00 6e 00 3a 00 3a 00 64 00 3a 00 3a 00 6c 00 3a 00 3a 00 65 00 3a 00 3a 00 2f 00 3a 00 3a 00 6c 00 3a 00 3a 00 6f 00 3a 00 3a 00 61 00 3a 00 3a 00 64 00 3a 00 3a 00 65 00 3a 00 3a 00 72 00 3a 00 3a 00 2e 00 3a 00 3a 00 65 00 3a 00 3a 00 78 00 3a 00 3a 00 65 00 } //05 00 
		$a_00_49 = {63 00 2c 00 3a 00 2c 00 5c 00 2c 00 64 00 2c 00 72 00 2c 00 73 00 2c 00 6d 00 2c 00 61 00 2c 00 72 00 2c 00 74 00 2c 00 6c 00 2c 00 6f 00 2c 00 61 00 2c 00 64 00 2c 00 2e 00 2c 00 65 00 2c 00 78 00 2c 00 65 00 } //05 00 
		$a_00_50 = {63 00 7b 00 7d 00 3a 00 7b 00 7d 00 5c 00 7b 00 7d 00 64 00 7b 00 7d 00 72 00 7b 00 7d 00 73 00 7b 00 7d 00 6d 00 7b 00 7d 00 61 00 7b 00 7d 00 72 00 7b 00 7d 00 74 00 7b 00 7d 00 6c 00 7b 00 7d 00 6f 00 7b 00 7d 00 61 00 7b 00 7d 00 64 00 7b 00 7d 00 2e 00 7b 00 7d 00 65 00 7b 00 7d 00 78 00 7b 00 7d 00 65 00 } //02 00 
		$a_00_51 = {64 00 65 00 75 00 69 00 20 00 68 00 33 00 37 00 38 00 6f 00 72 00 79 00 33 00 34 00 79 00 66 00 20 00 68 00 65 00 68 00 67 00 79 00 20 00 20 00 79 00 67 00 37 00 38 00 67 00 33 00 79 00 20 00 68 00 37 00 38 00 79 00 65 00 79 00 77 00 65 00 67 00 71 00 79 00 77 00 67 00 65 00 69 00 32 00 33 00 79 00 65 00 64 00 37 00 38 00 32 00 79 00 66 00 64 00 33 00 } //05 00 
		$a_00_52 = {68 00 2b 00 74 00 2b 00 74 00 2b 00 70 00 2b 00 3a 00 2b 00 2f 00 2b 00 2f 00 2b 00 70 00 2b 00 72 00 2b 00 6f 00 2b 00 6d 00 2b 00 6f 00 2b 00 2e 00 2b 00 64 00 2b 00 6f 00 2b 00 6c 00 2b 00 6c 00 2b 00 61 00 2b 00 72 00 } //05 00 
		$a_00_53 = {72 00 2e 00 2b 00 65 00 2e 00 2b 00 76 00 2b 00 2e 00 2b 00 65 00 2b 00 2e 00 2b 00 6e 00 2b 00 2e 00 2b 00 75 00 2b 00 2e 00 2b 00 65 00 } //05 00 
		$a_00_54 = {2b 00 2e 00 2b 00 63 00 2b 00 6f 00 2b 00 6d 00 2b 00 2f 00 2b 00 62 00 2b 00 75 00 2b 00 6e 00 2b 00 64 00 2b 00 6c 00 2b 00 65 00 2b 00 2f 00 2b 00 6c 00 2b 00 6f 00 2b 00 61 00 2b 00 64 00 2b 00 65 00 2b 00 72 00 2b 00 2e 00 2b 00 65 00 2b 00 78 00 2b 00 65 00 } //05 00 
		$a_00_55 = {63 00 5e 00 3a 00 5e 00 5c 00 5e 00 64 00 5e 00 72 00 5e 00 73 00 5e 00 6d 00 5e 00 61 00 5e 00 72 00 5e 00 74 00 5e 00 6c 00 5e 00 6f 00 5e 00 61 00 5e 00 64 00 5e 00 2e 00 5e 00 65 00 5e 00 78 00 5e 00 65 00 } //05 00 
		$a_00_56 = {68 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 74 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 74 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 70 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 3a 00 2f 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2f 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 70 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 72 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6f 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6d 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6f 00 } //05 00 
		$a_00_57 = {72 00 2e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 65 00 2e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 76 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 65 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 75 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 65 00 } //05 00 
		$a_00_58 = {63 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6f 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6d 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2f 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 62 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 75 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6e 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 64 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6c 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 65 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 2f 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6c 00 5b 00 5d 00 5b 00 5d 00 5b 00 5d 00 6f 00 } //05 00 
		$a_00_59 = {63 00 26 00 2e 00 26 00 3a 00 26 00 2e 00 26 00 5c 00 26 00 2e 00 26 00 64 00 26 00 2e 00 26 00 72 00 26 00 2e 00 26 00 73 00 26 00 2e 00 26 00 6d 00 26 00 2e 00 26 00 61 00 26 00 2e 00 26 00 72 00 26 00 2e 00 26 00 74 00 26 00 2e 00 26 00 6c 00 26 00 2e 00 26 00 6f 00 26 00 2e 00 26 00 61 00 26 00 2e 00 26 00 64 00 26 00 2e 00 26 00 2e 00 26 00 2e 00 26 00 65 00 26 00 2e 00 26 00 78 00 26 00 2e 00 26 00 65 00 } //05 00 
		$a_00_60 = {63 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 3a 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 5c 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 64 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 72 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 73 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 6d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 61 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 72 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 7b 00 7d 00 74 00 7b 00 7d 00 7b 00 7d 00 } //05 00 
		$a_00_61 = {33 00 6f 00 65 00 77 00 69 00 69 00 39 00 66 00 75 00 69 00 70 00 6f 00 38 00 33 00 72 00 75 00 64 00 63 00 38 00 39 00 74 00 64 00 75 00 66 00 6f 00 69 00 35 00 34 00 72 00 67 00 76 00 69 00 6f 00 79 00 34 00 35 00 75 00 5b 00 64 00 76 00 75 00 69 00 35 00 34 00 72 00 74 00 66 00 75 00 69 00 79 00 74 00 69 00 6f 00 75 00 69 00 35 00 34 00 74 00 72 00 75 00 6f 00 35 00 34 00 74 00 } //04 00 
		$a_00_62 = {70 00 00 00 02 00 00 00 2f 00 00 00 02 00 00 00 6d 00 00 00 06 00 00 00 20 00 } //04 00 
		$a_00_63 = {6f 00 20 00 00 00 06 00 00 00 20 00 61 00 20 00 00 00 06 00 00 00 20 00 } //04 00 
		$a_00_64 = {78 00 20 00 00 00 04 00 00 00 20 00 65 00 00 00 00 00 04 00 00 00 } //05 00 
		$a_00_65 = {49 00 44 00 00 00 00 00 0e 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 00 00 ec 1a 40 00 00 00 00 00 60 1b 40 } //05 00 
		$a_00_66 = {64 00 20 00 00 00 02 00 00 00 6f 00 00 00 02 00 00 00 6c 00 00 00 02 00 00 00 61 00 } //05 00 
		$a_00_67 = {72 00 00 00 04 00 00 00 72 00 20 00 00 00 00 00 06 00 00 00 20 00 65 00 20 00 00 00 06 00 00 00 20 00 76 00 20 00 00 00 06 00 00 00 20 00 6e } //02 00 
		$a_00_68 = {63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 64 00 6f 00 6c 00 6c 00 61 00 72 00 72 00 65 00 76 00 65 00 6e 00 75 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 75 00 6e 00 64 00 6c 00 65 00 } //02 00 
		$a_00_69 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 64 00 72 00 73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 } //02 00 
		$a_00_70 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 64 00 72 00 73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 2e 00 64 00 61 00 74 00 } //02 00 
		$a_00_71 = {73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 5f 00 73 00 74 00 61 00 74 00 73 00 2e 00 61 00 73 00 70 00 3f 00 65 00 78 00 65 00 3d 00 } //02 00 
		$a_00_72 = {73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 5f 00 65 00 69 00 6e 00 64 00 65 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 } //02 00 
		$a_00_73 = {73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 5f 00 73 00 74 00 61 00 74 00 73 00 2e 00 61 00 73 00 70 00 3f 00 61 00 3d 00 61 00 5f 00 75 00 26 00 65 00 78 00 65 00 3d 00 } //02 00 
		$a_00_74 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 64 00 6f 00 6c 00 6c 00 61 00 72 00 72 00 65 00 76 00 65 00 6e 00 75 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 75 00 6e 00 64 00 6c 00 65 00 2f 00 73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 2e 00 61 00 73 00 70 00 3f 00 69 00 64 00 3d 00 } //02 00 
		$a_00_75 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 63 00 6f 00 6e 00 74 00 65 00 6e 00 74 00 2e 00 64 00 6f 00 6c 00 6c 00 61 00 72 00 72 00 65 00 76 00 65 00 6e 00 75 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 75 00 6e 00 64 00 6c 00 65 00 2f 00 73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 2e 00 61 00 73 00 70 00 3f 00 61 00 3d 00 61 00 5f 00 6e 00 5f 00 75 00 26 00 69 00 64 00 3d 00 } //01 00 
		$a_00_76 = {2f 00 64 00 6f 00 6e 00 6f 00 74 00 64 00 65 00 6c 00 65 00 74 00 65 00 2e 00 61 00 73 00 70 00 } //01 00 
		$a_00_77 = {64 00 72 00 73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_78 = {64 00 72 00 73 00 6d 00 61 00 72 00 74 00 6c 00 6f 00 61 00 64 00 5f 00 6d 00 61 00 69 00 6e 00 } //01 00 
		$a_00_79 = {78 00 20 00 20 00 00 00 0c 00 00 00 20 00 20 } //01 00 
		$a_00_80 = {65 00 20 00 20 00 20 00 00 00 00 00 02 } //01 00 
		$a_00_81 = {70 00 00 00 02 00 00 00 2f 00 00 00 02 } //01 00 
		$a_00_82 = {73 00 00 00 02 00 00 00 6d 00 00 00 02 } //01 00 
		$a_00_83 = {61 00 00 00 02 00 00 00 74 00 00 00 02 } //01 00 
		$a_00_84 = {78 00 00 00 04 00 00 00 49 00 44 00 00 } //01 00 
		$a_00_85 = {0e 00 00 00 68 00 74 00 74 00 70 00 3a 00 2f } //01 00 
		$a_00_86 = {2f 00 00 00 10 00 00 00 20 00 61 00 63 00 74 } //01 00 
		$a_00_87 = {69 00 76 00 65 00 78 00 00 00 00 00 56 42 41 36 } //01 00 
		$a_00_88 = {64 00 20 00 20 00 00 00 0a 00 00 00 20 00 20 } //01 00 
		$a_00_89 = {72 00 20 00 20 00 00 00 0a 00 00 00 20 00 20 } //01 00 
		$a_00_90 = {73 00 20 00 20 00 00 00 0e 00 00 00 20 00 20 00 6d } //01 00 
		$a_00_91 = {6c 00 00 00 04 00 00 00 6c 00 61 } //01 00 
		$a_00_92 = {00 00 00 00 06 00 00 00 20 00 65 00 20 } //01 00 
		$a_00_93 = {06 00 00 00 20 00 76 00 20 00 00 00 06 } //01 00 
		$a_00_94 = {20 00 6e 00 20 00 00 00 04 00 00 00 75 } //02 00 
		$a_00_95 = {37 35 72 6c 6d 6f 6e 00 00 00 00 00 00 13 00 00 00 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //00 00 
	condition:
		any of ($a_*)
 
}