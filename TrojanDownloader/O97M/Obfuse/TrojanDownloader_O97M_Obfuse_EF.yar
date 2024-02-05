
rule TrojanDownloader_O97M_Obfuse_EF{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.EF,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00 
		$a_03_1 = {47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 31 33 37 30 39 36 32 30 2d 43 32 37 39 2d 31 31 43 45 2d 41 34 39 45 2d 34 34 34 35 35 33 35 34 30 30 30 30 22 29 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 22 63 90 02 20 2e 65 78 65 22 2c 20 49 6e 6c 69 6e 65 53 68 61 70 65 73 28 28 33 20 2d 20 35 29 20 2a 20 28 2d 31 29 29 2e 41 6c 74 65 72 6e 61 74 69 76 65 54 65 78 74 2c 20 22 22 2c 20 22 22 2c 20 30 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}