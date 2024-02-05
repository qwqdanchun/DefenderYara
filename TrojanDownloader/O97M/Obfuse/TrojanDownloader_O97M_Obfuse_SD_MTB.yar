
rule TrojanDownloader_O97M_Obfuse_SD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 46 69 65 6c 64 73 2e 49 74 65 6d 28 90 02 03 29 2e 4f 4c 45 46 6f 72 6d 61 74 2e 4f 62 6a 65 63 74 2e 47 72 6f 75 70 4e 61 6d 65 90 00 } //01 00 
		$a_03_1 = {2e 49 74 65 6d 28 29 2e 44 6f 63 75 6d 65 6e 74 2e 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 90 02 20 2c 90 00 } //01 00 
		$a_01_2 = {22 43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 22 2c 20 4e 75 6c 6c 2c 20 30 20 2a 20 31 } //01 00 
		$a_03_3 = {54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 50 61 72 61 67 72 61 70 68 73 28 90 02 40 29 2e 52 61 6e 67 65 2e 54 65 78 74 90 00 } //01 00 
		$a_01_4 = {3d 20 22 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SD_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 53 79 73 74 65 6d 33 32 5c 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 70 6f 77 65 72 73 68 64 6c 6c 2e 64 6c 6c 2c 6d 61 69 6e } //01 00 
		$a_01_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 70 6f 77 65 72 73 68 64 6c 6c 2e 64 6c 6c 22 } //01 00 
		$a_01_2 = {23 49 66 20 57 69 6e 36 34 20 54 68 65 6e } //01 00 
		$a_03_3 = {7b 20 49 6e 76 6f 6b 65 2d 57 65 62 52 65 71 75 65 73 74 20 2d 75 73 65 62 20 68 74 74 70 3a 2f 2f 90 02 03 2e 90 02 03 2e 90 02 03 2e 90 02 03 2f 90 02 05 2e 70 73 31 20 7d 20 5e 7c 20 69 65 78 3b 22 90 00 } //01 00 
		$a_03_4 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 90 02 03 22 20 26 20 4d 69 64 24 28 90 02 10 2c 20 90 02 10 2c 20 32 29 29 29 90 00 } //01 00 
		$a_03_5 = {3d 20 31 20 54 6f 20 4c 65 6e 28 90 02 10 29 20 53 74 65 70 20 32 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}