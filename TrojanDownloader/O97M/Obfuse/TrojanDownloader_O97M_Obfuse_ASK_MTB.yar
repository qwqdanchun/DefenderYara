
rule TrojanDownloader_O97M_Obfuse_ASK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ASK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 90 02 06 2e 22 20 26 90 00 } //01 00 
		$a_03_1 = {28 30 29 20 2b 20 22 20 22 20 2b 20 90 02 06 28 22 68 65 6c 6c 6f 22 29 90 00 } //01 00 
		$a_03_2 = {2e 65 78 65 63 20 28 90 02 06 29 90 0c 02 00 45 6e 64 20 57 69 74 68 90 0c 02 00 45 6e 64 20 53 75 62 90 0c 02 00 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_01_3 = {28 29 2c 20 22 31 31 31 31 31 31 31 31 31 31 22 29 } //01 00 
		$a_03_4 = {4f 70 65 6e 20 90 02 06 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 90 00 } //01 00 
		$a_03_5 = {3d 20 53 70 6c 69 74 28 90 02 06 2c 20 90 02 06 29 90 00 } //01 00 
		$a_03_6 = {46 75 6e 63 74 69 6f 6e 20 90 02 06 28 29 90 0c 02 00 57 69 74 68 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 68 61 70 65 73 28 90 02 06 29 90 00 } //01 00 
		$a_03_7 = {53 65 74 20 90 02 06 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}