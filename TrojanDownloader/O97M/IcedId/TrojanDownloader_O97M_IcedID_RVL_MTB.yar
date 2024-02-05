
rule TrojanDownloader_O97M_IcedID_RVL_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RVL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {22 36 38 37 34 37 34 37 30 33 61 32 66 32 66 33 36 33 36 32 65 33 31 33 35 33 30 32 65 33 36 33 36 32 65 33 31 33 36 33 37 32 66 37 33 37 35 32 65 22 29 20 26 20 90 02 0f 28 22 36 34 36 63 36 63 22 90 00 } //01 00 
		$a_03_1 = {53 68 65 6c 6c 28 90 02 0f 28 22 37 32 37 35 36 65 36 34 36 63 36 63 33 33 33 32 32 30 34 33 33 61 35 63 35 37 36 39 36 65 36 34 36 66 37 37 37 33 35 63 35 34 36 31 37 33 36 62 37 33 35 63 37 33 37 35 22 29 90 00 } //01 00 
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 0f 28 22 34 31 34 34 34 66 34 34 34 32 32 65 22 29 20 26 20 90 02 0f 28 22 35 33 37 34 37 32 36 35 36 31 36 64 22 29 29 90 00 } //01 00 
		$a_03_3 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 01 09 2c 20 90 01 0a 2c 20 32 29 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_IcedID_RVL_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RVL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {72 65 70 6f 4c 69 73 74 43 6c 65 61 72 20 3d 20 66 75 6e 63 74 69 6f 6e 52 65 71 75 65 73 74 20 26 20 22 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 6e 61 6d 65 56 2e 68 74 61 22 } //02 00 
		$a_01_1 = {67 6c 6f 62 61 6c 43 6f 6c 6c 65 63 74 44 61 74 65 20 3d 20 76 61 72 69 61 62 6c 65 53 77 61 70 20 26 20 22 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 73 63 72 54 65 78 74 62 6f 78 2e 68 74 61 22 } //01 00 
		$a_03_2 = {53 68 65 6c 6c 20 90 02 14 28 22 65 78 70 6c 6f 72 65 72 20 22 29 2c 20 76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 90 00 } //01 00 
		$a_03_3 = {4f 70 65 6e 20 90 02 14 28 22 22 29 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 00 } //01 00 
		$a_01_4 = {50 72 69 6e 74 20 23 31 2c 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 54 65 78 74 } //01 00 
		$a_01_5 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //00 00 
	condition:
		any of ($a_*)
 
}