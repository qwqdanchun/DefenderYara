
rule TrojanDownloader_O97M_Emotet_TI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.TI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 90 02 18 2e 43 72 65 61 74 65 28 90 02 18 20 26 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c 90 00 } //01 00 
		$a_03_1 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 20 2b 20 90 05 0f 06 41 2d 5a 61 2d 7a 2e 90 00 } //01 00 
		$a_03_2 = {3d 20 53 70 6c 69 74 28 22 90 02 40 77 90 02 30 69 90 02 30 6e 90 02 30 6d 90 02 30 67 90 02 40 6d 90 02 30 74 90 02 30 73 90 02 40 3a 90 00 } //01 00 
		$a_03_3 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 90 05 0f 06 41 2d 5a 61 2d 7a 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}