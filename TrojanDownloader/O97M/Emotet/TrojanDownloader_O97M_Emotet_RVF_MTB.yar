
rule TrojanDownloader_O97M_Emotet_RVF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RVF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 65 61 72 64 61 72 63 79 2e 63 6f 6d 2f 63 73 73 2f 4e 48 47 79 54 54 43 4b 2f 22 2c 22 } //01 00 
		$a_01_1 = {64 69 6a 69 63 6f 6d 2e 6e 65 74 2f 65 72 72 6f 72 2f 35 78 7a 58 64 44 2f 22 2c 22 } //01 00 
		$a_01_2 = {74 70 2e 63 6f 6d 70 72 69 62 65 2e 63 6f 6d 2f 77 70 2d 61 64 6d 69 6e 2f 50 7a 67 72 38 71 65 78 6e 2f 22 2c 22 } //01 00 
		$a_01_3 = {68 72 61 6e 65 6e 69 65 2e 70 65 72 65 65 7a 64 2d 32 34 2e 63 6f 6d 2f 31 2f 75 45 69 62 75 49 71 68 5a 69 34 6f 75 61 2f 22 2c 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Emotet_RVF_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RVF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 66 22 26 22 69 6c 65 22 26 22 63 61 22 26 22 62 69 22 26 22 6e 65 22 26 22 74 2e 64 22 26 22 69 67 69 74 22 26 22 61 6c 65 22 26 22 63 68 6f 22 26 22 65 73 2e 63 22 26 22 6f 2e 75 22 26 22 6b 2f 77 22 26 22 70 2d 61 64 22 26 22 6d 22 26 22 69 6e 2f 4e 22 26 22 43 2f 22 2c 22 } //01 00 
		$a_01_1 = {22 68 22 26 22 74 74 70 22 26 22 73 3a 2f 22 26 22 2f 67 66 22 26 22 6e 22 26 22 6c 2e 6f 22 26 22 72 22 26 22 67 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 72 22 26 22 77 64 22 26 22 42 54 22 26 22 4c 71 22 26 22 41 66 22 26 22 4e 53 22 26 22 59 57 22 26 22 33 4c 2f 22 2c 22 } //01 00 
		$a_01_2 = {22 68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 68 22 26 22 65 72 6f 22 26 22 69 63 61 22 26 22 6e 61 6c 22 26 22 79 74 22 26 22 69 63 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 22 26 22 6e 2f 53 42 22 26 22 4d 34 22 26 22 61 79 50 6a 22 26 22 4f 53 22 26 22 73 61 22 26 22 63 6c 46 22 26 22 4d 4b 22 26 22 6d 2f 22 2c 22 } //01 00 
		$a_01_3 = {22 68 22 26 22 74 74 70 22 26 22 73 3a 2f 22 26 22 2f 69 6e 66 6f 73 22 26 22 75 72 64 65 22 26 22 73 6f 22 26 22 6e 6f 72 61 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 73 22 26 22 73 2f 32 22 26 22 52 22 26 22 74 56 70 22 26 22 65 22 26 22 6b 2f 22 2c 22 } //01 00 
		$a_01_4 = {22 68 22 26 22 74 74 22 26 22 70 22 26 22 73 3a 2f 22 26 22 2f 6f 73 22 26 22 6b 6c 69 22 26 22 6e 69 22 26 22 6b 6b 22 26 22 65 22 26 22 6e 2e 6e 22 26 22 6f 2f 77 22 26 22 70 2d 61 64 22 26 22 6d 22 26 22 69 6e 2f 7a 22 26 22 4d 22 26 22 32 7a 22 26 22 6f 30 22 26 22 71 65 22 26 22 78 62 22 26 22 38 4e 22 26 22 67 2f 22 2c 22 } //01 00 
		$a_01_5 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 63 22 26 22 61 62 22 26 22 6c 65 22 26 22 65 71 22 26 22 75 69 70 22 26 22 6d 65 22 26 22 6e 74 22 26 22 6d 61 6e 22 26 22 61 67 22 26 22 65 6d 22 26 22 65 6e 22 26 22 74 72 22 26 22 65 74 22 26 22 75 72 22 26 22 6e 73 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 22 26 22 6e 2f 4a 50 69 22 26 22 76 69 22 26 22 7a 78 22 26 22 6d 69 22 26 22 77 6f 22 26 22 39 41 22 26 22 35 4f 77 22 26 22 79 73 2f 22 2c 22 } //01 00 
		$a_01_6 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 22 26 22 2f 6e 6f 22 26 22 76 22 26 22 61 77 22 26 22 65 64 22 26 22 65 76 22 26 22 65 6e 22 26 22 74 2e 63 22 26 22 6f 22 26 22 6d 2f 74 22 26 22 6d 22 26 22 70 2f 50 41 22 26 22 30 72 22 26 22 42 77 22 26 22 46 73 22 26 22 7a 49 22 26 22 70 79 2f 22 2c 22 } //01 00 
		$a_01_7 = {22 68 22 26 22 74 74 22 26 22 70 73 3a 2f 2f 77 22 26 22 77 77 2e 61 22 26 22 6c 74 61 22 26 22 73 6f 22 26 22 6c 75 22 26 22 74 69 22 26 22 6f 6e 22 26 22 73 2e 61 22 26 22 73 69 22 26 22 61 2f 6d 79 22 26 22 66 69 6c 22 26 22 65 73 2f 6d 22 26 22 79 42 22 26 22 39 38 22 26 22 34 45 22 26 22 6e 4f 22 26 22 6c 53 22 26 22 4a 4a 22 26 22 34 62 22 26 22 39 2f 22 2c 22 } //01 00 
		$a_01_8 = {22 68 22 26 22 74 74 22 26 22 70 3a 2f 2f 61 22 26 22 72 7a 22 26 22 75 6c 22 26 22 65 6e 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 69 6e 22 26 22 63 6c 22 26 22 75 64 22 26 22 65 73 2f 37 67 22 26 22 79 53 22 26 22 67 54 22 26 22 67 2f 22 2c 22 } //00 00 
	condition:
		any of ($a_*)
 
}