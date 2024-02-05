
rule TrojanDownloader_O97M_Emotet_UY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.UY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 90 02 40 2e 20 5f 90 00 } //01 00 
		$a_03_1 = {43 72 65 61 74 65 28 90 02 20 20 26 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c 90 00 } //01 00 
		$a_03_2 = {2e 54 61 67 90 02 20 20 3d 20 90 02 20 20 2b 20 43 68 72 57 28 90 02 15 20 2b 20 77 64 4b 65 79 53 29 20 2b 20 90 02 20 2e 90 02 20 2e 54 61 67 20 2b 90 00 } //01 00 
		$a_03_3 = {4a 6f 69 6e 28 90 02 20 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}