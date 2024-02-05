
rule TrojanDownloader_O97M_Obfuse_JAD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JAD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 61 6e 67 65 28 22 41 31 22 29 2e 56 61 6c 75 65 20 3d 20 22 43 61 6d 62 69 61 6e 64 6f 20 65 6c 20 74 61 6d 61 f1 6f 20 64 65 20 65 73 74 65 20 64 6f 63 75 6d 65 6e 74 6f 2c 20 65 73 70 65 72 65 } //01 00 
		$a_01_1 = {4f 70 65 6e 20 22 67 65 74 22 2c 20 44 65 63 72 79 70 74 28 22 71 7e 7e 7a 47 3c 3c } //01 00 
		$a_03_2 = {43 68 72 28 41 73 63 28 4d 69 64 28 90 02 c8 2c 20 90 02 c8 2c 20 31 29 29 20 2d 20 31 33 29 90 00 } //01 00 
		$a_03_3 = {44 65 63 72 79 70 74 20 26 20 4d 69 64 28 90 02 c8 2c 20 90 02 c8 2c 20 31 29 90 00 } //01 00 
		$a_03_4 = {53 70 65 63 69 61 6c 50 61 74 68 20 2b 20 44 65 63 72 79 70 74 28 22 90 02 0f 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}