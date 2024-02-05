
rule TrojanDropper_O97M_Powdow_BVBA_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.BVBA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 90 02 10 22 90 0c 02 00 53 75 62 20 65 46 69 6c 65 28 29 90 0c 02 00 44 69 6d 20 51 51 31 20 41 73 20 4f 62 6a 65 63 74 90 0c 02 00 53 65 74 20 51 51 31 20 3d 20 4e 65 77 20 46 6f 72 6d 90 0c 02 00 52 4f 20 3d 20 22 43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 22 90 0c 02 00 52 4f 49 20 3d 20 52 4f 20 2b 20 22 70 69 6e 2e 76 62 73 22 90 0c 02 00 69 69 20 3d 20 22 22 90 00 } //01 00 
		$a_03_1 = {4e 65 20 3d 20 22 49 5a 49 4d 49 5a 49 4f 5a 49 22 90 0c 02 00 57 57 20 3d 20 51 51 31 2e 74 32 2e 43 61 70 74 69 6f 6e 90 0c 02 00 4d 79 46 69 6c 65 20 3d 20 46 72 65 65 46 69 6c 65 90 00 } //01 00 
		$a_01_2 = {66 75 6e 20 3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 6b 20 63 73 63 72 69 70 74 2e 65 78 65 20 43 3a 5c 50 72 6f 67 72 61 6d 44 61 74 61 5c 70 69 6e 2e 76 62 73 22 2c 20 43 68 72 28 34 38 29 29 } //01 00 
		$a_03_3 = {27 52 65 73 75 6c 74 20 3d 20 4d 73 67 42 6f 78 28 22 20 20 54 68 65 20 64 6f 63 75 6d 65 6e 74 20 63 61 6e 6e 6f 74 20 62 65 20 64 65 63 72 79 70 74 65 64 2e 20 22 2c 20 76 62 41 62 6f 72 74 52 65 74 72 79 49 67 6e 6f 72 65 20 2b 20 76 62 43 72 69 74 69 63 61 6c 2c 20 22 20 20 45 72 72 6f 72 20 20 20 30 78 63 30 30 30 30 31 34 32 20 20 20 22 29 90 0c 02 00 45 6e 64 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_4 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 90 0c 02 00 62 78 68 2e 65 46 69 6c 65 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_5 = {73 53 70 6c 69 74 20 3d 20 53 70 6c 69 74 28 55 43 61 73 65 24 28 54 72 69 6d 24 28 45 6d 61 69 6c 29 29 2c 20 22 2e 22 29 } //01 00 
		$a_01_6 = {47 65 74 20 23 72 65 66 46 69 6c 65 2c 20 2c 20 74 6d 70 42 79 74 65 34 } //00 00 
	condition:
		any of ($a_*)
 
}