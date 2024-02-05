
rule TrojanDownloader_O97M_Powdow_RVAP_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVAP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 4f 62 6a 65 63 74 20 5f 0d 0a 28 62 65 61 63 68 29 0d 0a 68 6f 74 65 6c 20 5f } //01 00 
		$a_01_1 = {63 6f 70 79 66 69 6c 65 20 63 6f 6d 70 75 74 65 72 6f 6f 31 2c 20 63 6f 6c 6c 65 67 65 6f 6f 34 2c 20 54 72 75 65 } //01 00 
		$a_01_2 = {53 52 65 76 65 72 73 65 4d 6f 64 20 26 20 53 74 72 52 65 76 65 72 73 65 28 4d 69 64 28 66 6c 78 36 39 38 77 68 73 2c 20 41 63 53 36 35 53 61 71 46 2c 20 32 29 29 } //01 00 
		$a_01_3 = {47 65 74 4f 62 6a 65 63 74 28 62 75 73 29 2e 20 5f 0d 0a 47 65 74 28 61 69 72 70 6c 61 6e 65 29 2e 20 5f 0d 0a 43 72 65 61 74 65 20 5f 0d 0a 63 61 72 2c 20 5f } //01 00 
		$a_01_4 = {41 75 74 6f 5f 4f 70 65 6e 28 29 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Powdow_RVAP_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVAP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 31 33 2e 32 33 31 2e 32 33 38 2e 31 32 2f 62 6f 61 72 64 2f 90 02 19 22 22 20 90 02 19 2e 65 78 65 2e 65 78 65 20 26 26 20 90 1b 01 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_03_1 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 33 2e 37 30 2e 32 34 37 2e 32 32 39 2f 63 6c 61 73 73 2f 6c 6f 61 64 65 72 2f 90 02 19 22 22 20 90 02 19 2e 65 78 65 2e 65 78 65 20 26 26 20 90 02 19 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_03_2 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 32 30 2e 32 32 32 2e 35 30 2e 31 33 34 2f 6a 76 2f 6c 6f 61 64 65 72 2f 90 02 19 22 22 20 90 02 19 2e 65 78 65 2e 65 78 65 20 26 26 20 90 02 19 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_03_3 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 39 36 35 36 33 33 34 38 33 36 38 39 30 35 38 33 30 34 2f 39 37 33 30 30 34 34 36 34 35 33 39 37 31 33 35 36 36 2f 90 02 19 22 22 20 90 02 19 2e 65 78 65 2e 65 78 65 20 26 26 20 90 02 19 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_03_4 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 64 75 62 69 62 72 61 73 2e 63 6f 6d 2e 62 72 2f 70 72 69 76 5f 73 79 6d 2f 90 02 19 22 22 20 90 02 19 2e 65 78 65 2e 65 78 65 20 26 26 20 90 02 19 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_03_5 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 31 30 30 36 38 32 32 35 36 31 37 30 39 30 34 37 38 36 31 2f 31 30 30 38 35 38 33 38 30 39 32 34 35 31 32 36 37 30 38 2f 90 02 19 22 22 20 90 02 19 2e 65 78 65 2e 65 78 65 20 26 26 20 90 02 19 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}