
rule TrojanDownloader_O97M_Obfuse_RVQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 68 65 6c 6c 20 28 45 6e 76 69 72 6f 6e 28 22 54 65 6d 70 22 29 20 2b 20 22 5c 90 01 05 2e 65 78 65 22 29 90 00 } //01 00 
		$a_00_1 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 57 61 69 74 20 28 4e 6f 77 20 2b 20 54 69 6d 65 56 61 6c 75 65 28 22 30 3a 30 30 3a 30 34 22 29 29 } //01 00 
		$a_00_2 = {52 65 70 6c 61 63 65 28 76 61 6c 2c 20 43 68 72 28 69 29 2c 20 22 26 23 22 20 26 20 69 20 26 20 22 3b 22 29 } //01 00 
		$a_02_3 = {78 20 3d 20 44 65 63 72 79 70 74 53 74 72 69 6e 67 28 90 01 0f 2c 20 22 73 64 22 29 90 00 } //01 00 
		$a_00_4 = {43 68 72 57 28 22 26 68 22 20 26 20 4d 69 64 28 72 65 76 76 61 6c 2c 20 79 2c 20 32 29 29 } //01 00 
		$a_00_5 = {41 73 63 57 28 4d 69 64 28 63 68 72 56 61 6c 2c 20 78 2c 20 31 29 29 20 2d 20 41 73 63 57 28 4d 69 64 28 6b 65 79 2c 20 6b 65 79 70 6f 73 2c 20 31 29 29 } //00 00 
	condition:
		any of ($a_*)
 
}