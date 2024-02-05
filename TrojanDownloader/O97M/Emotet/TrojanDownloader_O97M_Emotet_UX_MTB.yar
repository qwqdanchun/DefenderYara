
rule TrojanDownloader_O97M_Emotet_UX_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.UX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 90 02 40 2e 20 5f 90 00 } //01 00 
		$a_03_1 = {43 72 65 61 74 65 28 90 02 20 20 26 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c 90 00 } //01 00 
		$a_03_2 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 90 02 20 20 3d 20 53 70 6c 69 74 28 90 02 20 20 2b 20 43 56 61 72 28 53 74 72 52 65 76 65 72 73 65 28 90 02 10 29 29 2c 90 00 } //01 00 
		$a_03_3 = {4a 6f 69 6e 28 90 02 20 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}