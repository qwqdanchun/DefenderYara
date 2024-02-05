
rule TrojanDownloader_O97M_Adnel_R{
	meta:
		description = "TrojanDownloader:O97M/Adnel.R,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {26 20 53 74 72 52 65 76 65 72 73 65 28 90 02 0f 28 22 73 65 6c 6f 2e 43 61 6d 72 65 53 74 44 4f 6a 41 6f 62 22 29 29 20 26 20 90 02 0a 20 26 20 76 62 4e 65 77 4c 69 6e 65 90 00 } //01 00 
		$a_02_1 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 90 02 0f 28 22 3d 20 4c 20 55 52 6c 65 46 69 74 72 73 22 29 29 20 26 20 43 68 72 28 33 34 29 20 26 20 53 74 72 52 65 76 65 72 73 65 28 90 00 } //01 00 
		$a_02_2 = {26 20 53 74 72 52 65 76 65 72 73 65 28 90 02 0f 28 22 74 28 65 63 62 6a 65 4f 61 74 72 65 20 43 20 3d 61 6d 72 65 53 74 44 4f 6a 41 6f 62 74 20 53 65 20 22 29 29 20 26 20 43 68 72 28 33 34 29 20 26 20 53 74 72 52 65 76 65 72 73 65 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}