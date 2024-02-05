
rule TrojanDownloader_O97M_Emotet_OF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.OF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {4f 62 6a 65 63 74 28 90 02 45 28 90 02 55 22 90 02 35 77 90 02 35 69 90 02 35 6e 90 02 35 65 90 02 35 6d 90 02 35 67 90 02 35 65 90 02 35 6d 90 02 35 74 90 02 35 65 90 02 35 73 90 02 35 3a 90 00 } //01 00 
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 02 45 2c 20 90 02 45 2c 90 00 } //01 00 
		$a_03_2 = {3d 20 52 65 70 6c 61 63 65 28 90 02 45 2c 20 90 02 45 2c 20 22 22 29 90 00 } //01 00 
		$a_03_3 = {4f 62 6a 65 63 74 28 90 02 15 28 90 02 15 28 90 02 15 2e 90 02 15 2e 43 61 70 74 69 6f 6e 29 29 29 90 00 } //01 00 
		$a_01_4 = {2c 20 4d 53 46 6f 72 6d 73 2c } //00 00 
	condition:
		any of ($a_*)
 
}