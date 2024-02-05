
rule TrojanDownloader_O97M_EncDoc_MOBI_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.MOBI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {74 69 74 6c 65 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 74 69 74 6c 65 22 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_1 = {50 72 69 6e 74 20 23 31 2c 20 90 02 20 43 6c 6f 73 65 20 23 31 90 00 } //01 00 
		$a_01_2 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 53 74 72 52 65 76 65 72 73 65 28 22 30 38 38 33 46 31 39 43 30 41 30 30 2d 35 35 34 38 2d 31 44 31 31 2d 31 41 32 46 2d 30 39 44 46 41 38 30 43 3a 77 65 6e 22 29 29 } //01 00 
		$a_03_3 = {3d 20 63 6f 75 6e 74 4c 65 66 74 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 74 65 78 74 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_4 = {3d 20 63 6f 6e 73 74 4c 6f 61 64 43 61 70 74 69 6f 6e 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 74 65 78 74 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_5 = {2e 4e 61 76 69 67 61 74 65 32 20 74 69 74 6c 65 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}