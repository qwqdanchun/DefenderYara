
rule TrojanDownloader_O97M_Obfuse_HX_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 22 20 26 20 4d 69 64 28 } //01 00 
		$a_01_1 = {29 20 26 20 22 21 21 21 22 3a 20 4e 65 78 74 } //01 00 
		$a_01_2 = {2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c } //01 00 
		$a_03_3 = {52 65 70 6c 61 63 65 28 90 02 35 2c 20 22 21 22 2c 20 22 22 29 90 00 } //01 00 
		$a_03_4 = {3d 20 53 70 6c 69 74 28 90 02 37 2c 20 22 7c 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}