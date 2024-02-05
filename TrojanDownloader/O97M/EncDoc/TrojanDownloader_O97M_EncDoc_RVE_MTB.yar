
rule TrojanDownloader_O97M_EncDoc_RVE_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RVE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {22 68 74 74 70 3a 2f 2f 67 61 69 64 6f 76 2e 62 67 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 55 67 2f 22 2c 22 } //0a 00 
		$a_01_1 = {22 68 74 74 70 3a 2f 2f 73 74 75 64 69 6f 6b 72 69 73 68 6e 61 70 72 6f 64 75 63 74 69 6f 6e 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 33 6d 4a 2f 22 2c 22 } //0a 00 
		$a_01_2 = {22 68 74 74 70 3a 2f 2f 67 6f 6f 64 6d 61 72 6b 65 74 69 6e 67 67 72 6f 75 70 2e 63 6f 6d 2f 6c 69 76 65 5f 73 69 74 65 2f 59 39 63 45 6b 39 51 4e 6c 44 55 65 67 2f 22 2c 22 } //0a 00 
		$a_01_3 = {22 68 74 74 70 73 3a 2f 2f 77 6f 72 64 70 72 65 73 73 64 65 73 2e 76 61 6e 7a 6f 6c 69 6e 69 2d 67 74 65 2e 6f 72 67 2e 62 72 2f 66 75 6e 64 61 63 61 6f 74 65 6c 65 66 6f 6e 69 63 61 2e 6f 72 67 2e 62 72 2f 67 41 62 43 34 51 70 4a 59 49 2f 22 2c 22 } //0a 00 
		$a_01_4 = {22 68 74 74 70 3a 2f 2f 73 68 6f 70 6e 68 61 70 2e 63 6f 6d 2f 68 69 67 68 62 69 6e 64 65 72 2f 6e 6e 59 6b 6f 39 46 44 4e 4a 2f 22 2c 22 } //0a 00 
		$a_01_5 = {22 68 74 74 70 3a 2f 2f 74 78 69 6e 67 61 6d 65 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 50 77 4b 66 56 51 66 64 68 48 62 41 76 32 6a 2f 22 2c 22 } //01 00 
		$a_01_6 = {44 22 26 22 6c 22 26 22 6c 52 22 26 22 65 67 69 73 74 65 72 22 26 22 53 65 72 76 65 22 26 22 72 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_RVE_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RVE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 2f 6f 22 26 22 73 74 2e 6e 22 26 22 65 22 26 22 74 2e 62 72 2f 74 22 26 22 6f 58 22 26 22 75 4e 22 26 22 53 30 22 26 22 30 2f 6c 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_1 = {22 68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 2f 61 22 26 22 74 6f 22 26 22 63 68 22 26 22 61 67 22 26 22 61 6c 65 22 26 22 72 69 61 2e 63 22 26 22 6f 22 26 22 6d 2e 61 72 2f 43 6e 69 6a 41 4c 41 79 78 52 2f 6c 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_2 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 6d 61 62 65 72 69 63 2e 63 6f 6d 2f 33 58 52 4a 64 42 45 6a 46 63 2f 6c 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_3 = {22 68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 74 22 26 22 68 22 26 22 65 6f 72 22 26 22 65 73 74 61 22 26 22 75 72 61 22 26 22 6e 74 22 26 22 65 2e 63 6f 6d 2e 6d 78 2f 6d 51 22 26 22 4a 51 4e 22 26 22 64 65 22 26 22 77 52 33 71 2f 76 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_4 = {22 68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 2f 68 69 62 22 26 22 69 73 22 26 22 63 75 22 26 22 73 22 26 22 6d 22 26 22 61 72 6b 22 26 22 65 74 69 22 26 22 6e 22 26 22 67 2e 63 6f 2e 69 6e 2f 6b 22 26 22 35 66 34 22 26 22 70 22 26 22 4c 22 26 22 4c 62 22 26 22 4a 2f 76 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_5 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 61 22 26 22 75 22 26 22 74 22 26 22 6f 22 26 22 70 22 26 22 61 72 22 26 22 74 65 73 22 26 22 65 22 26 22 6e 22 26 22 67 22 26 22 75 61 22 26 22 64 61 22 26 22 6c 61 22 26 22 6a 61 72 22 26 22 61 2e 63 22 26 22 6f 22 26 22 6d 2f 43 22 26 22 33 22 26 22 42 35 22 26 22 36 22 26 22 35 22 26 22 6e 22 26 22 46 22 26 22 50 2f 76 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_6 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 74 6f 75 72 61 67 65 6e 63 79 62 68 75 74 61 6e 2e 63 6f 6d 2f 70 49 53 64 6e 70 73 66 62 2f 79 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_7 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 72 65 61 6c 63 6f 74 61 63 6f 65 73 2e 63 6f 6d 2e 62 72 2f 44 37 66 42 6f 48 74 79 64 2f 79 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_8 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 2f 63 61 6d 70 6f 69 6e 76 65 73 74 2e 63 6f 6d 2e 62 72 2f 63 50 76 34 50 67 6f 55 2f 79 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //00 00 
	condition:
		any of ($a_*)
 
}