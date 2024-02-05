
rule TrojanDownloader_O97M_Predator_AR_MTB{
	meta:
		description = "TrojanDownloader:O97M/Predator.AR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 49 66 20 57 69 6e 36 34 20 54 68 65 6e } //01 00 
		$a_01_1 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 57 69 64 65 43 68 61 72 54 6f 4d 75 6c 74 69 42 79 74 65 20 4c 69 62 20 22 6b 65 72 6e 65 6c 33 32 22 20 28 42 79 56 61 6c 20 43 6f 64 65 50 61 67 65 20 41 73 20 4c 6f 6e 67 50 74 72 2c 20 42 79 56 61 6c 20 64 77 46 6c 61 67 73 20 41 73 20 4c 6f 6e 67 50 74 72 2c } //01 00 
		$a_01_2 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 4d 75 6c 74 69 42 79 74 65 54 6f 57 69 64 65 43 68 61 72 20 4c 69 62 20 22 6b 65 72 6e 65 6c 33 32 22 20 28 42 79 56 61 6c 20 43 6f 64 65 50 61 67 65 20 41 73 20 4c 6f 6e 67 50 74 72 2c 20 42 79 56 61 6c 20 64 77 46 6c 61 67 73 20 41 73 20 4c 6f 6e 67 50 74 72 2c } //01 00 
		$a_03_3 = {4f 6e 20 45 72 72 6f 72 20 5f 90 02 08 52 65 73 75 6d 65 20 4e 65 78 74 90 02 08 43 61 6c 6c 90 00 } //01 00 
		$a_01_4 = {2e 78 6c 73 22 } //01 00 
		$a_01_5 = {2e 43 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 62 36 34 22 29 } //01 00 
		$a_01_6 = {2e 43 52 45 41 54 45 20 5f } //01 00 
		$a_03_7 = {4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 20 90 02 10 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}