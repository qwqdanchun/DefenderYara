
rule TrojanDownloader_O97M_IcedID_ICE_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.ICE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,11 00 11 00 11 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 20 22 22 20 26 20 4d 69 64 28 90 02 07 2c 20 90 02 07 2c 20 31 29 90 00 } //01 00 
		$a_03_1 = {46 75 6e 63 74 69 6f 6e 20 90 02 07 28 62 36 34 29 90 00 } //01 00 
		$a_01_2 = {57 69 74 68 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 2e 58 4d 4c 44 4f 4d 22 29 2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 62 36 34 22 29 } //01 00 
		$a_01_3 = {2e 44 61 74 61 54 79 70 65 20 3d 20 22 62 69 6e 2e 62 61 73 65 36 34 22 } //01 00 
		$a_01_4 = {2e 74 65 78 74 20 3d 20 62 36 34 } //01 00 
		$a_01_5 = {62 20 3d 20 2e 6e 6f 64 65 54 79 70 65 64 56 61 6c 75 65 } //01 00 
		$a_01_6 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //01 00 
		$a_03_7 = {43 61 6c 6c 20 90 02 07 2e 43 6f 70 79 46 69 6c 65 28 90 02 07 2c 20 90 02 07 2c 20 31 29 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_8 = {4f 70 65 6e 20 90 02 07 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 00 } //01 00 
		$a_01_9 = {50 72 69 6e 74 20 23 31 2c } //01 00 
		$a_03_10 = {43 6c 6f 73 65 20 23 31 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_11 = {3d 20 53 70 6c 69 74 28 90 02 07 28 66 72 6d 2e 70 61 74 68 73 2e 74 65 78 74 29 2c 20 22 7c 22 29 90 00 } //01 00 
		$a_03_12 = {3d 20 53 70 6c 69 74 28 90 02 07 2c 20 22 2c 22 29 90 00 } //01 00 
		$a_01_13 = {28 66 72 6d 2e 74 65 78 74 31 2e 76 61 6c 75 65 29 } //01 00 
		$a_01_14 = {3d 20 43 68 72 28 33 34 29 } //01 00 
		$a_03_15 = {44 69 6d 20 90 02 07 20 41 73 20 4e 65 77 20 53 68 65 6c 6c 33 32 2e 53 68 65 6c 6c 90 00 } //01 00 
		$a_03_16 = {43 61 6c 6c 20 90 02 07 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 28 90 02 07 2c 20 90 02 07 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 29 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}