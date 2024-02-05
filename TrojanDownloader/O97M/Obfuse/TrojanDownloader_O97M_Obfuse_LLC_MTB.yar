
rule TrojanDownloader_O97M_Obfuse_LLC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LLC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 22 90 02 15 22 29 2e 56 61 6c 75 65 3a 90 00 } //01 00 
		$a_01_1 = {53 68 65 6c 6c 20 } //01 00 
		$a_03_2 = {3d 20 43 4c 6e 67 28 90 02 20 20 26 20 4d 69 64 28 90 02 20 2c 20 90 02 20 2c 20 32 29 29 90 00 } //01 00 
		$a_03_3 = {47 6f 54 6f 20 90 02 15 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}