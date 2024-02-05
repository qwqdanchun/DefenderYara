
rule TrojanDownloader_O97M_Obfuse_LHL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LHL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 56 61 6c 28 22 26 48 22 20 26 20 28 4d 69 64 24 } //01 00 
		$a_03_1 = {3d 20 41 73 63 28 4d 69 64 24 28 90 02 10 2c 90 00 } //01 00 
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 03 28 22 90 02 10 22 2c 20 28 64 65 63 72 79 70 74 28 90 00 } //01 00 
		$a_03_3 = {3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 73 74 72 49 6e 70 75 74 2c 20 90 02 60 2c 20 90 02 01 29 29 20 2d 20 90 02 01 29 90 02 15 4e 65 78 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}