
rule TrojanDownloader_O97M_EncDoc_PLI_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.PLI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 73 22 26 22 3a 2f 2f 63 61 62 61 6c 61 73 67 6f 76 2e 63 6f 6d 2e 62 72 2f 4f 43 33 7a 62 6e 53 43 47 2f 6a 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c 22 } //01 00 
		$a_01_1 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 73 3a 2f 2f 67 22 26 22 75 61 22 26 22 74 65 22 26 22 63 2e 63 6f 6d 2e 62 72 2f 4e 77 6e 4a 34 4f 44 78 2f 6a 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c 22 } //01 00 
		$a_01_2 = {22 68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 2f 73 22 26 22 69 74 22 26 22 65 2e 61 22 26 22 64 76 22 26 22 61 6e 22 26 22 63 65 72 74 76 2e 63 6f 6d 2f 56 62 55 7a 43 43 51 6f 2f 6a 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c 22 } //01 00 
		$a_01_3 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 22 26 22 2f 61 22 26 22 64 22 26 22 76 22 26 22 61 22 26 22 6e 22 26 22 63 22 26 22 65 22 26 22 65 22 26 22 6e 22 26 22 74 22 26 22 65 22 26 22 72 22 26 22 74 22 26 22 61 22 26 22 69 22 26 22 6e 22 26 22 6d 22 26 22 65 22 26 22 6e 22 26 22 74 22 26 22 61 22 26 22 67 22 26 22 65 22 26 22 6e 22 26 22 63 22 26 22 79 2e 63 22 26 22 6f 22 26 22 6d 22 26 22 2f 62 22 26 22 6c 34 22 26 22 51 22 26 22 46 22 26 22 4f 22 26 22 50 22 26 22 4d 22 26 22 6a 22 26 22 34 22 26 22 34 22 26 22 2f 61 22 26 22 6c 22 26 22 74 22 26 22 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c 22 } //01 00 
		$a_01_4 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 2f 22 26 22 2f 70 22 26 22 72 22 26 22 65 22 26 22 6d 22 26 22 69 22 26 22 65 22 26 22 72 22 26 22 72 22 26 22 65 22 26 22 63 22 26 22 6f 22 26 22 76 22 26 22 65 22 26 22 72 22 26 22 79 2e 63 22 26 22 6f 22 26 22 6d 22 26 22 2e 6d 22 26 22 79 2f 4d 22 26 22 46 22 26 22 43 22 26 22 78 22 26 22 4e 22 26 22 68 22 26 22 37 22 26 22 56 22 26 22 35 22 26 22 4c 22 26 22 63 2f 22 26 22 61 22 26 22 6c 22 26 22 74 22 26 22 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c 22 } //01 00 
		$a_01_5 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 2f 22 26 22 2f 62 22 26 22 6f 22 26 22 6c 22 26 22 74 22 26 22 6d 22 26 22 6f 22 26 22 74 22 26 22 6f 22 26 22 72 22 26 22 73 22 26 22 2e 63 22 26 22 6f 2e 7a 22 26 22 61 2f 64 22 26 22 56 22 26 22 45 22 26 22 71 22 26 22 59 22 26 22 5a 22 26 22 57 22 26 22 62 22 26 22 2f 61 22 26 22 6c 22 26 22 74 22 26 22 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 2c } //01 00 
		$a_01_6 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 22 26 22 2f 6f 6e 6c 69 6e 65 67 72 6f 2e 69 6e 2f 54 73 48 54 37 4f 41 43 43 45 32 4e 2f 6f 69 2e 68 74 6d 6c } //01 00 
		$a_01_7 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 22 26 22 2f 67 6f 6c 62 61 2e 63 6f 6d 2e 62 72 2f 4d 6a 46 51 32 30 62 45 4d 2f 6f 69 2e 68 74 6d 6c } //01 00 
		$a_01_8 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 22 26 22 2f 68 69 67 68 73 6f 66 74 67 72 6f 75 70 2e 63 6f 6d 2f 35 59 30 76 77 72 67 54 63 4f 42 32 2f 6f 69 2e 68 74 6d 6c } //01 00 
		$a_01_9 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 22 26 22 2f 67 72 22 26 22 65 22 26 22 65 6e 22 26 22 66 6c 22 26 22 61 67 2e 65 22 26 22 73 70 22 26 22 2e 62 72 2f 79 22 26 22 75 49 22 26 22 4e 64 22 26 22 52 62 22 26 22 4d 2f 74 69 79 6e 68 2e 68 74 6d 6c } //01 00 
		$a_01_10 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 22 26 22 2f 6e 22 26 22 6f 22 26 22 69 22 26 22 74 22 26 22 68 22 26 22 61 22 26 22 74 22 26 22 31 22 26 22 31 22 26 22 37 2e 76 22 26 22 6e 2f 54 22 26 22 53 68 22 26 22 37 47 22 26 22 42 65 22 26 22 49 52 2f 74 69 79 6e 68 2e 68 74 6d 6c } //01 00 
		$a_01_11 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 22 26 22 2f 2f 70 22 26 22 6c 61 22 26 22 79 73 69 22 26 22 73 2e 63 22 26 22 6f 6d 22 26 22 2e 62 22 26 22 72 2f 71 22 26 22 4a 53 22 26 22 4c 31 22 26 22 42 22 26 22 4e 22 26 22 35 56 2f 74 69 79 6e 68 2e 68 74 6d 6c } //00 00 
	condition:
		any of ($a_*)
 
}