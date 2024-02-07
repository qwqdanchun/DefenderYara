
rule TrojanDownloader_O97M_Obfuse_KA{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KA,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 26 20 4d 69 64 24 28 90 02 20 2c 20 49 6e 74 28 52 6e 64 28 29 20 2a 20 4c 65 6e 28 90 02 20 29 20 2b 20 31 29 2c 20 31 29 90 00 } //01 00 
		$a_03_1 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 28 26 48 34 36 20 2d 20 26 48 41 36 20 2a 20 26 48 33 29 20 2a 20 28 26 48 39 35 20 2f 20 26 48 35 29 20 2a 20 30 29 29 90 00 } //01 00 
		$a_01_2 = {20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 46 75 6c 6c 4e 61 6d 65 } //01 00   = Application.ActiveDocument.FullName
		$a_03_3 = {52 65 44 69 6d 20 90 02 20 28 30 20 54 6f 20 4c 4f 46 28 90 02 20 29 20 2d 20 31 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}