
rule TrojanDownloader_O97M_Obfuse_LHN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LHN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 22 90 02 15 22 29 2e 56 61 6c 75 65 90 00 } //01 00 
		$a_03_1 = {43 61 6c 6c 20 49 6e 69 74 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_2 = {45 78 69 74 20 53 75 62 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_3 = {53 6f 6c 64 65 72 90 0c 02 00 45 6e 64 20 53 75 62 90 0c 02 00 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 90 00 } //01 00 
		$a_01_4 = {47 6f 54 6f 20 } //01 00  GoTo 
		$a_01_5 = {53 68 65 6c 6c 20 } //00 00  Shell 
	condition:
		any of ($a_*)
 
}