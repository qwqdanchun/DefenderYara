
rule TrojanDownloader_O97M_Obfuse_CF_eml{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CF!eml,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 90 0a 32 00 53 65 74 20 90 02 0f 3d 90 00 } //01 00 
		$a_03_1 = {2e 52 65 70 6c 61 63 65 28 90 02 0f 2c 20 22 22 29 90 00 } //01 00 
		$a_03_2 = {49 66 20 4c 65 6e 28 22 90 02 0f 22 29 20 3c 20 90 02 05 20 54 68 65 6e 90 02 03 56 42 41 2e 43 61 6c 6c 42 79 4e 61 6d 65 20 90 02 0a 2c 20 90 02 0b 28 22 90 02 0a 22 2c 20 22 90 02 19 22 2c 20 22 54 72 75 65 22 29 2c 90 00 } //01 00 
		$a_03_3 = {45 6e 64 20 49 66 90 02 0f 3d 20 90 02 0a 28 22 90 01 06 22 2c 20 22 2f 90 01 06 67 90 01 06 72 90 01 06 6f 90 01 06 75 90 01 06 70 90 01 06 63 90 01 06 72 90 01 06 65 90 01 06 61 90 01 06 74 90 01 06 65 90 01 06 64 90 01 06 22 2c 20 22 54 72 75 65 22 29 90 00 } //01 00 
		$a_03_4 = {45 6e 64 20 49 66 90 02 0f 3d 20 90 02 0a 28 22 90 01 04 22 2c 20 22 74 90 01 04 2e 90 01 04 61 90 01 04 74 90 01 04 2f 90 01 04 6d 90 01 04 69 90 01 04 73 90 01 04 61 90 01 04 2e 90 01 04 62 90 01 04 69 90 01 04 6e 90 01 04 22 2c 20 22 54 72 75 65 22 29 90 00 } //01 00 
		$a_03_5 = {45 6e 64 20 49 66 90 02 0f 3d 20 90 02 0a 28 22 90 01 04 22 2c 20 22 24 90 01 04 65 90 01 04 6e 90 01 04 76 90 01 04 3a 90 01 04 74 90 01 04 65 90 01 04 6d 90 01 04 70 90 01 04 20 90 01 04 2b 90 01 04 20 90 01 04 27 90 01 04 22 2c 20 22 54 72 75 65 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}