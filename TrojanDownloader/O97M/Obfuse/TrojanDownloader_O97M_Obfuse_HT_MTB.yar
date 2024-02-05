
rule TrojanDownloader_O97M_Obfuse_HT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 57 53 43 72 69 70 74 2e 73 48 45 4c 6c 22 } //01 00 
		$a_01_1 = {3d 20 22 43 4d 44 20 2f 63 20 4d 73 69 65 5e 58 5e 45 63 20 22 20 26 20 43 68 72 28 31 38 39 20 2d 20 31 34 32 29 20 26 20 43 68 72 28 34 30 35 20 2d 20 33 30 30 29 20 26 20 43 68 72 28 38 35 20 2d 20 35 33 29 20 26 20 43 68 72 28 33 34 31 20 2d 20 32 33 37 29 20 26 20 43 68 72 28 32 38 31 20 2d 20 31 36 35 29 20 26 20 43 68 72 28 31 39 38 20 2d 20 38 32 29 20 26 20 43 68 72 28 34 32 31 20 2d 20 33 30 39 29 20 26 20 43 68 72 28 32 33 33 20 2d 20 31 37 35 29 20 26 20 43 68 72 28 34 30 33 20 2d 20 33 35 36 29 20 26 } //00 00 
	condition:
		any of ($a_*)
 
}