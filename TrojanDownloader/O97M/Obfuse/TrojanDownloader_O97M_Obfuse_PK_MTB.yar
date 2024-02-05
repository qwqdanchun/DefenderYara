
rule TrojanDownloader_O97M_Obfuse_PK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //01 00 
		$a_01_1 = {43 61 6c 6c 20 4d 75 6c 74 69 6e 75 63 6c 65 61 72 } //01 00 
		$a_03_2 = {47 65 74 4f 62 6a 65 63 74 28 22 77 22 20 26 20 22 69 22 20 26 20 22 6e 22 20 26 20 22 6d 22 20 26 20 22 67 6d 74 22 20 26 20 22 73 22 20 26 20 22 3a 5c 5c 22 20 26 20 90 02 0f 20 26 20 22 5c 72 6f 22 20 26 20 22 6f 74 5c 63 69 22 20 26 20 22 6d 76 32 22 20 26 20 22 3a 57 22 20 26 20 22 69 6e 33 22 20 26 20 22 32 5f 50 22 20 26 20 22 72 6f 63 22 20 26 20 22 65 22 20 26 20 22 73 22 20 26 20 22 73 22 29 2e 43 72 65 61 74 65 90 00 } //01 00 
		$a_01_3 = {3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 22 64 33 61 38 65 38 38 63 39 37 64 22 29 2e 56 61 6c 75 65 } //00 00 
	condition:
		any of ($a_*)
 
}