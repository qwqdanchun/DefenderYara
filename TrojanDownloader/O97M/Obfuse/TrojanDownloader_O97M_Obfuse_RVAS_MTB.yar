
rule TrojanDownloader_O97M_Obfuse_RVAS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {47 65 74 4f 62 6a 65 63 74 28 51 65 65 72 65 72 65 28 22 31 33 38 31 32 34 31 32 39 31 32 38 31 32 32 31 32 38 31 33 35 31 33 34 30 37 37 22 29 29 2e 47 65 74 28 51 65 65 72 65 72 65 28 22 31 30 36 31 32 34 31 32 39 30 37 30 30 36 39 31 31 34 30 39 39 31 33 33 31 33 30 31 31 38 31 32 30 31 33 34 31 33 34 22 29 29 2e 43 72 65 61 74 65 } //05 00 
		$a_01_1 = {47 65 74 4f 62 6a 65 63 74 28 4e 75 74 73 28 22 32 30 33 32 31 33 32 31 30 32 30 39 32 31 39 32 30 39 32 30 30 32 30 37 31 33 34 22 29 29 2e 47 65 74 28 4e 75 74 73 28 22 32 33 35 32 31 33 32 31 30 31 34 33 31 34 32 32 32 37 32 33 36 32 30 36 32 31 31 32 32 33 32 31 37 32 30 37 32 30 37 22 29 29 2e 43 72 65 61 74 65 } //05 00 
		$a_01_2 = {3d 20 43 68 72 28 42 6f 6f 6d 6f 6e 20 2d 20 31 39 29 } //05 00 
		$a_01_3 = {3d 20 43 68 72 28 42 65 65 74 73 20 58 6f 72 20 31 38 38 29 } //01 00 
		$a_03_4 = {57 68 69 6c 65 20 4c 65 6e 28 90 02 0a 29 20 3e 20 30 90 00 } //01 00 
		$a_01_5 = {44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 0d 0a 20 20 20 20 4d 79 4d 61 63 72 6f } //00 00 
	condition:
		any of ($a_*)
 
}