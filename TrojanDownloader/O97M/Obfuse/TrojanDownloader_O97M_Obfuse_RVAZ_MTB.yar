
rule TrojanDownloader_O97M_Obfuse_RVAZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 4f 62 6a 65 63 74 28 52 61 6e 67 65 28 22 42 31 30 36 22 29 2e 56 61 6c 75 65 29 } //01 00 
		$a_03_1 = {62 64 66 64 66 20 3d 20 90 01 04 2e 4f 70 65 6e 28 76 30 64 66 20 2b 20 22 5c 90 01 05 2e 62 61 74 22 29 90 00 } //01 00 
		$a_01_2 = {72 65 76 28 52 61 6e 67 65 28 22 42 31 30 32 22 29 2e 56 61 6c 75 65 29 20 2b 20 72 65 76 28 52 61 6e 67 65 28 22 42 31 30 30 22 29 2e 56 61 6c 75 65 29 } //01 00 
		$a_01_3 = {72 65 76 20 26 20 4d 69 64 28 73 2c 20 70 2c 20 31 29 } //01 00 
		$a_01_4 = {43 53 74 72 28 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 29 } //01 00 
		$a_03_5 = {4f 70 65 6e 20 90 01 06 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}