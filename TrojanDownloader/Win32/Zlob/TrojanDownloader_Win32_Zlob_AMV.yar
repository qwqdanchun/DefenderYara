
rule TrojanDownloader_Win32_Zlob_AMV{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AMV,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 12 00 00 0f 00 "
		
	strings :
		$a_03_0 = {40 89 44 24 10 90 02 05 8a 90 01 02 32 90 17 04 01 01 01 01 54 44 4c 5c 24 90 01 01 88 90 01 01 90 17 04 01 01 01 01 48 49 4a 4b ff 4c 24 10 75 f0 90 00 } //07 00 
		$a_03_1 = {44 00 00 00 88 9c 24 90 01 01 01 00 00 c6 84 24 90 01 01 01 00 00 43 90 00 } //07 00 
		$a_03_2 = {83 c4 08 84 c0 0f 85 90 01 02 00 00 c6 44 24 90 01 01 47 c6 44 24 90 01 01 65 e8 90 01 02 00 00 90 00 } //03 00 
		$a_01_3 = {8a 44 24 29 c6 44 24 2a 72 88 44 24 2c c6 44 24 2b 6e } //02 00 
		$a_01_4 = {67 65 6f 72 67 69 61 20 6d 64 00 } //02 00 
		$a_01_5 = {6d 69 73 73 69 6e 67 77 6f 72 6c 64 00 } //02 00 
		$a_01_6 = {7a 65 72 67 00 } //02 00 
		$a_01_7 = {5f 5f 50 4d 32 5f 55 50 44 5f 5f } //02 00 
		$a_01_8 = {69 65 62 74 6d 2e 65 78 65 00 } //02 00 
		$a_01_9 = {00 66 75 63 6b 00 } //02 00 
		$a_01_10 = {6d 6d 6d 00 77 74 66 00 } //01 00 
		$a_01_11 = {3f 4e 3d 53 37 50 25 31 2e 31 64 4e 38 4b 33 } //01 00 
		$a_01_12 = {67 61 74 65 2e 70 68 70 } //01 00 
		$a_01_13 = {64 75 6d 62 00 } //01 00 
		$a_01_14 = {25 64 2e 62 61 74 00 } //01 00 
		$a_01_15 = {53 6f 66 74 77 61 72 65 5c 41 70 70 6c 69 63 61 74 69 6f 6e 73 00 } //01 00 
		$a_01_16 = {5f 5f 49 53 43 } //01 00 
		$a_01_17 = {5f 4d 4d 5f 46 } //00 00 
	condition:
		any of ($a_*)
 
}