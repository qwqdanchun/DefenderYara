
rule TrojanDownloader_O97M_Powdow_ALVS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.ALVS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 61 75 74 6f 6f 70 65 4e 28 29 90 0c 02 00 6d 69 78 20 22 54 22 2c 20 22 41 22 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_1 = {50 75 62 6c 69 63 20 53 75 62 20 6d 69 78 28 90 02 20 2c 20 90 02 20 29 90 02 20 20 3d 20 22 2e 68 22 20 26 20 90 02 20 20 26 20 90 02 20 4f 70 65 6e 20 90 02 20 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 00 } //01 00 
		$a_03_2 = {50 72 69 6e 74 20 23 31 2c 20 52 65 70 6c 61 63 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2c 20 22 90 02 08 22 2c 20 22 22 29 90 0c 02 00 43 6c 6f 73 65 20 23 31 90 0c 02 00 77 69 6e 64 6f 77 5f 6f 70 65 6e 20 90 02 20 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_3 = {3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c 90 02 30 2e 72 75 6e 20 22 73 63 72 69 70 74 72 75 6e 6e 65 72 20 2d 61 70 70 76 73 63 72 69 70 74 20 22 20 26 20 90 02 20 2c 20 32 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_4 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 77 61 76 44 61 74 65 4d 69 78 22 } //00 00 
	condition:
		any of ($a_*)
 
}