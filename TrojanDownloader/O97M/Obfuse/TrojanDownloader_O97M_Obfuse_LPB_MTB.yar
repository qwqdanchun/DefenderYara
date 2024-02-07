
rule TrojanDownloader_O97M_Obfuse_LPB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LPB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 53 68 65 65 74 73 28 22 90 02 10 22 29 2e 43 65 6c 6c 73 28 90 02 06 2c 20 90 02 03 29 2e 56 61 6c 75 65 2c 20 73 75 70 65 72 2c 20 90 02 03 29 29 20 2d 20 90 02 03 29 90 00 } //01 00 
		$a_03_1 = {3c 3d 20 4c 65 6e 28 53 68 65 65 74 73 28 22 90 02 10 22 29 2e 43 65 6c 6c 73 28 90 02 06 2c 20 90 02 03 29 2e 56 61 6c 75 65 29 20 54 68 65 6e 90 00 } //01 00 
		$a_01_2 = {47 6f 54 6f 20 } //01 00  GoTo 
		$a_01_3 = {53 68 65 6c 6c 20 } //00 00  Shell 
	condition:
		any of ($a_*)
 
}