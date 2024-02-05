
rule TrojanDownloader_O97M_Obfuse_SF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 46 69 65 6c 64 73 2e 49 74 65 6d 28 90 02 03 29 2e 4f 4c 45 46 6f 72 6d 61 74 2e 4f 62 6a 65 63 74 2e 47 72 6f 75 70 4e 61 6d 65 90 00 } //01 00 
		$a_03_1 = {2e 50 61 72 61 67 72 61 70 68 73 28 90 02 55 29 2e 52 61 6e 67 65 2e 54 65 78 74 90 00 } //01 00 
		$a_03_2 = {2e 49 74 65 6d 28 29 2e 44 6f 63 75 6d 65 6e 74 2e 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 90 02 20 2c 20 90 02 20 20 26 20 90 02 20 2c 20 90 02 20 2c 20 4e 75 6c 6c 2c 20 30 20 2a 90 00 } //01 00 
		$a_01_3 = {3d 20 4d 69 64 28 22 22 20 26 20 22 22 20 26 20 22 22 20 26 20 22 22 20 26 20 22 22 20 26 20 } //00 00 
	condition:
		any of ($a_*)
 
}