
rule TrojanDownloader_O97M_Emotet_NEMF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.NEMF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 30 28 22 90 02 30 2e 90 02 30 22 2c 20 22 90 02 10 22 29 2c 20 22 22 29 2e 52 75 6e 20 90 02 30 2c 20 30 90 00 } //01 00 
		$a_03_1 = {68 3d 5c 22 22 63 90 02 06 3a 90 02 06 70 90 02 06 72 90 02 06 6f 90 02 06 67 90 02 06 72 90 02 06 61 90 02 06 6d 90 02 06 64 90 02 06 61 90 02 06 74 90 02 06 61 90 00 } //01 00 
		$a_01_2 = {72 61 20 3d 20 52 65 70 6c 61 63 65 28 73 31 2c 20 22 2c 22 2c 20 22 22 29 } //01 00 
		$a_01_3 = {74 78 74 24 20 3d 20 46 69 6c 65 54 6f 56 42 41 46 75 6e 63 74 69 6f 6e 28 22 2c 22 2c 20 22 2c 22 29 } //01 00 
		$a_01_4 = {46 5f 43 6f 6e 74 65 6e 74 24 20 3d 20 46 5f 43 6f 6e 74 65 6e 74 24 20 26 20 22 26 22 20 26 20 72 65 73 24 20 26 20 22 22 20 26 20 76 62 4e 65 77 4c 69 6e 65 } //00 00 
	condition:
		any of ($a_*)
 
}