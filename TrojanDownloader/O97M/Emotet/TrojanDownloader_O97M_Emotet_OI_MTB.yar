
rule TrojanDownloader_O97M_Emotet_OI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.OI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 45 28 90 02 55 22 90 02 35 77 90 02 35 69 90 02 35 6e 90 02 35 6d 90 02 35 67 90 02 35 6d 90 02 35 74 90 02 35 73 90 02 35 3a 90 00 } //01 00 
		$a_03_1 = {43 72 65 61 74 65 28 90 02 45 2c 20 90 02 45 2c 90 00 } //01 00 
		$a_03_2 = {3d 20 52 65 70 6c 61 63 65 28 90 02 45 2c 20 90 02 45 2c 20 22 22 29 90 00 } //01 00 
		$a_03_3 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 90 02 02 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 00 } //01 00 
		$a_01_4 = {2e 53 68 6f 77 57 69 6e 64 6f 77 20 3d 20 46 61 6c 73 65 } //00 00  .ShowWindow = False
	condition:
		any of ($a_*)
 
}