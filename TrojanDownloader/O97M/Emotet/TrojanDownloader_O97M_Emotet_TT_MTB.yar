
rule TrojanDownloader_O97M_Emotet_TT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.TT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 90 02 20 2e 43 72 65 61 74 65 28 90 02 18 20 26 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c 90 00 } //01 00 
		$a_03_1 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 24 20 2b 20 90 05 0f 06 41 2d 5a 61 2d 7a 2e 90 00 } //01 00 
		$a_03_2 = {3d 20 53 70 6c 69 74 28 90 02 20 20 2b 20 4c 54 72 69 6d 28 4c 54 72 69 6d 28 90 05 0f 06 41 2d 5a 61 2d 7a 2e 90 00 } //01 00 
		$a_03_3 = {4a 6f 69 6e 28 90 05 0f 06 41 2d 5a 61 2d 7a 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}