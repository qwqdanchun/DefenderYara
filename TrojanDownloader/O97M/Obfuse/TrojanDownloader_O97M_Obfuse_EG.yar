
rule TrojanDownloader_O97M_Obfuse_EG{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.EG,SIGNATURE_TYPE_MACROHSTR_EXT,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 47 65 74 4f 62 6a 65 63 74 28 90 02 30 29 2e 43 72 65 61 74 65 28 90 02 10 2e 90 02 24 20 2b 20 90 02 10 2e 90 02 24 20 2b 90 00 } //01 00 
		$a_03_1 = {53 68 6f 77 57 69 6e 64 6f 77 20 3d 20 90 02 10 2e 90 02 10 20 2d 20 90 02 10 2e 90 02 10 20 2b 20 90 00 } //01 00 
		$a_03_2 = {53 68 6f 77 57 69 6e 64 6f 77 20 3d 20 90 02 10 2e 90 02 10 20 2b 20 90 02 10 2e 90 02 10 20 2b 20 90 00 } //01 00 
		$a_03_3 = {53 68 6f 77 57 69 6e 64 6f 77 20 3d 20 90 02 24 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}