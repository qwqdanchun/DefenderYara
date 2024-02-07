
rule TrojanDownloader_O97M_Obfuse_NN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.NN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 20 2c 20 90 02 20 2c 20 32 29 29 29 90 00 } //01 00 
		$a_03_1 = {2e 52 75 6e 20 90 02 20 2c 20 90 02 20 2c 20 54 72 75 65 90 00 } //01 00 
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 22 90 02 20 22 29 20 26 90 00 } //01 00 
		$a_01_3 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 } //01 00  ActiveDocument.Save
		$a_01_4 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_03_5 = {3d 20 31 20 54 6f 20 4c 65 6e 28 90 02 20 29 20 53 74 65 70 20 32 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}