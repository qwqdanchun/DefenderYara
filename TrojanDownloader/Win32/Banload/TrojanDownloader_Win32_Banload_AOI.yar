
rule TrojanDownloader_Win32_Banload_AOI{
	meta:
		description = "TrojanDownloader:Win32/Banload.AOI,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 62 00 6f 00 75 00 74 00 3a 00 62 00 6c 00 61 00 6e 00 6b 00 3f 00 63 00 68 00 65 00 63 00 6b 00 00 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_1 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 2e 00 64 00 61 00 74 00 00 00 00 00 00 00 00 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_01_2 = {77 00 42 00 6c 00 6f 00 71 00 47 00 46 00 2e 00 64 00 61 00 74 00 } //01 00 
		$a_01_3 = {23 00 70 00 61 00 67 00 69 00 6e 00 61 00 2d 00 3e 00 7b 00 00 00 } //01 00 
		$a_01_4 = {6f 00 70 00 65 00 6e 00 46 00 69 00 6c 00 65 00 2e 00 74 00 78 00 74 00 00 00 } //01 00 
		$a_01_5 = {24 00 67 00 63 00 61 00 70 00 74 00 30 00 00 00 } //01 00 
		$a_01_6 = {74 00 6f 00 6b 00 65 00 6e 00 53 00 65 00 73 00 73 00 61 00 6f 00 3d 00 00 00 } //01 00 
		$a_01_7 = {63 00 3a 00 5c 00 74 00 6d 00 70 00 2e 00 69 00 6e 00 69 00 00 00 } //01 00 
		$a_01_8 = {32 00 33 00 34 00 32 00 31 00 34 00 32 00 31 00 36 00 31 00 36 00 31 00 32 00 32 00 36 00 32 00 32 00 35 00 32 00 32 00 38 00 31 00 30 00 38 00 } //01 00 
		$a_01_9 = {33 00 35 00 39 00 34 00 30 00 31 00 34 00 31 00 37 00 33 00 39 00 35 00 34 00 30 00 31 00 33 00 36 00 33 00 32 00 39 00 32 00 } //01 00 
		$a_01_10 = {5c 00 48 00 43 00 42 00 5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 45 00 4e 00 5c 00 32 00 30 00 31 00 30 00 5c 00 42 00 48 00 4f 00 20 00 52 00 65 00 6d 00 6f 00 74 00 65 00 5c 00 4d 00 6f 00 64 00 75 00 6c 00 6f 00 20 00 50 00 72 00 69 00 6e 00 63 00 69 00 70 00 61 00 6c 00 5c 00 } //01 00 
		$a_01_11 = {66 83 eb 03 66 ff 45 f6 66 83 fb 01 77 b1 8d 45 e4 50 0f b7 d3 b9 03 00 00 00 8b 45 fc } //01 00 
		$a_01_12 = {73 00 76 00 63 00 68 00 6f 00 6c 00 73 00 00 00 b0 04 } //01 00 
		$a_01_13 = {73 00 76 00 63 00 68 00 6f 00 73 00 3a 00 } //01 00 
		$a_03_14 = {22 00 29 00 7b 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 67 00 65 00 74 00 45 00 6c 00 65 00 6d 00 65 00 6e 00 74 00 73 00 42 00 79 00 54 00 61 00 67 00 4e 00 61 00 6d 00 65 00 28 00 22 00 49 00 4e 00 50 00 55 00 54 00 22 00 29 00 2e 00 69 00 74 00 65 00 6d 00 28 00 90 01 0e 29 00 2e 00 76 00 61 00 6c 00 75 00 65 00 3d 00 22 00 90 00 } //01 00 
		$a_03_15 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 01 1a 3c 00 73 00 63 00 72 00 69 00 70 00 74 00 3e 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 2e 00 6c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 3d 00 22 00 90 01 16 3c 00 2f 00 73 00 63 00 72 00 69 00 70 00 74 00 3e 00 90 00 } //01 00 
		$a_01_16 = {45 6e 76 69 61 53 65 6e 68 61 73 29 00 } //00 00 
		$a_00_17 = {5d 04 00 00 6b b1 02 80 } //5c 20 
	condition:
		any of ($a_*)
 
}