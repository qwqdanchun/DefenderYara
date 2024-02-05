
rule TrojanDownloader_O97M_Obfuse_JAK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JAK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {53 74 61 72 74 2d 53 6c 65 65 70 20 31 37 } //02 00 
		$a_01_1 = {45 58 45 43 28 22 63 6d 64 20 2f 63 20 70 5e 6f 77 65 72 73 68 65 6c 6c 20 2d 77 20 31 20 28 6e 45 77 2d 6f 42 6a 65 63 54 20 4e 65 74 2e 57 65 62 63 4c 60 49 45 4e 74 29 } //02 00 
		$a_03_2 = {63 64 20 24 65 6e 56 60 3a 54 45 4d 60 50 3b 20 2e 5c 90 02 06 2e 62 61 74 22 29 90 00 } //01 00 
		$a_03_3 = {28 27 44 6f 77 6e 27 2b 27 6c 6f 61 64 46 69 6c 65 27 29 2e 22 22 49 6e 76 6f 6b 65 22 22 28 27 68 74 74 70 73 3a 2f 2f 74 69 6e 79 75 72 6c 2e 63 6f 6d 2f 79 32 73 77 65 75 7a 63 27 2c 27 90 02 06 2e 62 61 74 27 29 22 29 90 00 } //01 00 
		$a_03_4 = {28 27 44 6f 77 6e 27 2b 27 6c 6f 61 64 46 69 6c 65 27 29 2e 22 22 49 6e 76 6f 6b 65 22 22 28 27 68 74 74 70 73 3a 2f 2f 74 69 6e 79 75 72 6c 2e 63 6f 6d 2f 79 79 66 76 68 6a 6d 76 27 2c 27 90 02 06 2e 62 61 74 27 29 22 29 90 00 } //01 00 
		$a_03_5 = {28 27 44 6f 77 6e 27 2b 27 6c 6f 61 64 46 69 6c 65 27 29 2e 22 22 49 6e 76 6f 6b 65 22 22 28 27 68 74 74 70 73 3a 2f 2f 74 69 6e 79 75 72 6c 2e 63 6f 6d 2f 79 79 39 35 64 70 32 68 27 2c 27 90 02 06 2e 62 61 74 27 29 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}