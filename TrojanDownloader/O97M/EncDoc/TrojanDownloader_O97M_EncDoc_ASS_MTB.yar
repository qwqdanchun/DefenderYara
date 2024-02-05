
rule TrojanDownloader_O97M_EncDoc_ASS_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ASS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6f 62 6a 58 4d 4c 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f 32 30 2e 36 39 2e 39 37 2e 33 31 2f 6d 75 6d 22 2c 20 46 61 6c 73 65 } //01 00 
		$a_03_1 = {3d 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 54 65 6d 70 5c 90 02 2f 2e 65 78 65 22 90 00 } //01 00 
		$a_01_2 = {3d 20 22 20 2f 43 20 6d 6f 76 65 20 43 3a 5c 57 69 6e 64 6f 77 73 5c 54 65 6d 70 5c 6d 75 6d 22 20 26 20 22 20 22 20 26 20 } //01 00 
		$a_03_3 = {2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 90 02 2f 2c 20 22 22 2c 20 22 22 2c 20 22 6f 70 65 6e 22 2c 20 30 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_ASS_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ASS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 2f 28 22 35 37 35 33 36 33 37 32 36 39 37 30 37 34 32 90 02 2f 22 29 20 26 20 90 02 2f 28 22 90 02 2f 22 29 29 2e 52 75 6e 20 90 02 2f 2c 20 30 90 00 } //01 00 
		$a_01_1 = {20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 22 20 26 20 } //01 00 
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 2f 28 22 34 31 34 34 34 90 02 2f 22 29 20 26 20 90 02 2f 28 22 90 02 2f 22 29 29 90 00 } //01 00 
		$a_03_3 = {73 65 74 52 65 71 75 65 73 74 48 65 61 64 65 72 20 90 02 2f 28 22 35 35 37 33 36 35 37 90 02 2f 22 29 20 26 20 90 02 2f 28 22 90 02 2f 22 29 2c 20 90 02 2f 28 22 34 64 36 66 90 02 3f 22 29 20 26 20 90 02 2f 28 22 90 02 3f 22 29 90 00 } //01 00 
		$a_03_4 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 90 02 2f 2c 20 32 90 00 } //01 00 
		$a_01_5 = {73 65 74 4f 70 74 69 6f 6e 28 32 29 20 3d 20 31 33 30 35 36 } //00 00 
	condition:
		any of ($a_*)
 
}