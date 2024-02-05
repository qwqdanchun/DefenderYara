
rule TrojanDownloader_O97M_Obfuse_IT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.IT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {29 20 3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 90 02 35 2c 20 90 02 35 2c 20 31 29 29 20 2d 90 00 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 28 } //01 00 
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 90 02 15 2c 20 22 34 22 29 29 90 00 } //01 00 
		$a_03_3 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 90 02 35 2c 20 32 90 00 } //01 00 
		$a_03_4 = {2e 77 72 69 74 65 20 90 02 35 2e 72 65 73 70 6f 6e 73 65 42 6f 64 79 90 00 } //01 00 
		$a_01_5 = {3d 20 31 20 54 6f 20 4c 65 6e 28 } //00 00 
	condition:
		any of ($a_*)
 
}