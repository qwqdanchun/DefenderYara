
rule TrojanDownloader_O97M_Powdow_MAS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.MAS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 61 64 61 64 61 64 61 66 61 66 61 66 61 66 61 } //01 00 
		$a_01_1 = {6d 61 67 69 63 20 63 65 6c 6c } //01 00 
		$a_01_2 = {3d 45 58 45 43 28 43 48 41 52 28 31 31 32 29 26 43 48 41 52 28 31 31 31 29 26 43 48 41 52 28 31 31 39 29 26 43 48 41 52 28 31 30 31 29 26 43 48 41 52 28 31 31 34 29 26 43 48 41 52 28 31 31 35 29 26 43 48 41 52 28 31 30 34 29 26 43 48 41 52 28 31 30 31 29 26 43 48 41 52 28 31 30 38 29 26 43 48 41 52 28 31 30 38 29 } //01 00 
		$a_01_3 = {45 50 20 62 79 70 61 73 73 20 73 74 41 52 74 60 2d 73 6c 45 60 45 70 } //01 00 
		$a_01_4 = {63 64 20 24 7b 65 6e 56 60 3a 61 70 70 64 61 74 61 7d } //01 00 
		$a_01_5 = {26 43 48 41 52 28 34 36 29 26 22 65 78 65 27 29 } //01 00 
		$a_01_6 = {28 6e 45 77 2d 6f 42 60 6a 65 63 54 20 4e 65 74 2e 57 65 62 63 4c 60 49 45 4e 74 29 } //01 00 
		$a_01_7 = {2b 27 6c 6f 61 64 46 69 6c 65 27 29 } //01 00 
		$a_01_8 = {73 74 41 52 74 60 2d 73 6c 45 60 45 70 } //01 00 
		$a_01_9 = {74 74 70 3a 2f 2f 62 6f 68 6c 65 72 2d 65 64 65 6c 73 74 61 68 6c 2d 61 74 2e 63 6f 6d } //00 00 
	condition:
		any of ($a_*)
 
}