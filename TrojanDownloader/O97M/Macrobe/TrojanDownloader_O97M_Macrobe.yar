
rule TrojanDownloader_O97M_Macrobe{
	meta:
		description = "TrojanDownloader:O97M/Macrobe,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 42 79 4e 61 6d 65 20 4c 65 67 65 6e 64 61 72 79 2c 20 46 55 2e 54 65 78 74 42 6f 78 31 2e 54 65 78 74 2c 20 56 62 4d 65 74 68 6f 64 2c 20 90 05 10 06 61 2d 7a 41 2d 5a 5f 52 48 2c 20 22 4d 6f 7a 69 6c 6c 61 2f 35 2e 31 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 36 2e 31 3b 20 72 76 3a 35 30 2e 30 29 20 47 65 63 6b 6f 2f 32 30 32 30 30 31 30 32 20 46 69 72 65 66 6f 78 2f 35 30 2e 30 22 90 00 } //01 00 
		$a_01_1 = {4d 6f 76 65 64 50 65 72 6d 61 6e 65 6e 74 6c 79 20 3d 20 53 70 6c 69 74 28 22 } //01 00  MovedPermanently = Split("
		$a_03_2 = {53 65 74 20 43 75 72 72 65 6e 74 52 65 76 69 73 69 6f 6e 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 05 10 06 61 2d 7a 41 2d 5a 5f 48 65 61 64 48 75 6e 74 65 72 28 31 29 29 90 00 } //00 00 
		$a_00_3 = {cf 18 } //00 00 
	condition:
		any of ($a_*)
 
}