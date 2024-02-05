
rule TrojanDownloader_Win32_Banload_AWE{
	meta:
		description = "TrojanDownloader:Win32/Banload.AWE,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 12 00 00 05 00 "
		
	strings :
		$a_01_0 = {48 74 16 48 74 1f 83 e8 03 0f 84 8b 00 00 00 83 e8 03 74 1a e9 88 00 00 00 } //05 00 
		$a_01_1 = {c7 45 f0 01 00 00 00 8d 45 e0 8b 55 fc 8b 4d f0 66 8b 54 4a fe 66 8b 4d fa 66 2b d1 66 f7 d2 e8 } //01 00 
		$a_03_2 = {5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 90 02 40 5c 00 53 00 63 00 70 00 61 00 64 00 90 00 } //01 00 
		$a_03_3 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 44 00 61 00 74 00 61 00 5c 00 90 02 20 2e 00 63 00 70 00 6c 00 00 90 00 } //01 00 
		$a_03_4 = {6d 00 45 00 72 00 72 00 6f 00 3d 00 90 01 10 20 00 61 00 73 00 20 00 90 00 } //01 00 
		$a_01_5 = {5c 00 63 00 6f 00 6d 00 70 00 78 00 38 00 36 00 2e 00 7a 00 69 00 70 00 } //01 00 
		$a_01_6 = {2f 00 63 00 20 00 73 00 63 00 20 00 63 00 6f 00 6e 00 66 00 69 00 67 00 20 00 77 00 73 00 63 00 73 00 76 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 3d 00 } //01 00 
		$a_01_7 = {4c 00 55 00 53 00 54 00 41 00 44 00 4f 00 52 00 45 00 53 00 2c 00 20 00 43 00 4f 00 4d 00 50 00 52 00 4f 00 4d 00 45 00 54 00 49 00 44 00 4f 00 53 00 2c 00 20 00 48 00 4f 00 4e 00 45 00 53 00 54 00 49 00 44 00 41 00 44 00 45 00 } //01 00 
		$a_03_8 = {63 6d 64 20 2f 63 20 73 74 61 72 74 20 90 02 10 5c 90 02 10 2e 63 70 6c 90 00 } //01 00 
		$a_01_9 = {45 00 73 00 74 00 65 00 20 00 61 00 72 00 71 00 75 00 69 00 76 00 6f 00 20 00 65 00 73 00 74 00 e1 00 20 00 63 00 6f 00 72 00 72 00 6f 00 6d 00 70 00 69 00 64 00 6f 00 20 00 65 00 20 00 6e 00 e3 00 6f 00 20 00 70 00 6f 00 64 00 65 00 20 00 73 00 65 00 72 00 20 00 61 00 62 00 65 00 72 00 74 00 6f 00 21 00 } //01 00 
		$a_01_10 = {5c 00 63 00 68 00 72 00 69 00 73 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_11 = {66 00 72 00 6d 00 5f 00 64 00 61 00 72 00 75 00 6d 00 61 00 } //01 00 
		$a_01_12 = {49 00 67 00 66 00 78 00 54 00 72 00 61 00 79 00 20 00 4c 00 61 00 75 00 6e 00 63 00 68 00 2e 00 2e 00 2e 00 } //01 00 
		$a_01_13 = {4d 00 65 00 64 00 69 00 61 00 50 00 6c 00 61 00 79 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_14 = {66 00 72 00 6d 00 5f 00 64 00 72 00 6f 00 70 00 73 00 } //01 00 
		$a_01_15 = {5c 00 6e 00 74 00 75 00 73 00 65 00 72 00 2e 00 6c 00 6f 00 67 00 } //01 00 
		$a_01_16 = {67 00 65 00 72 00 6f 00 75 00 20 00 75 00 6d 00 20 00 65 00 72 00 72 00 6f 00 20 00 65 00 20 00 6e 00 e3 00 6f 00 20 00 70 00 6f 00 64 00 65 00 20 00 73 00 65 00 72 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 61 00 64 00 6f 00 } //01 00 
		$a_01_17 = {5c 00 64 00 65 00 76 00 69 00 63 00 65 00 70 00 61 00 63 00 6b 00 2e 00 74 00 78 00 74 00 } //00 00 
		$a_00_18 = {5d 04 00 00 7c 1a 03 80 5c 26 } //00 00 
	condition:
		any of ($a_*)
 
}