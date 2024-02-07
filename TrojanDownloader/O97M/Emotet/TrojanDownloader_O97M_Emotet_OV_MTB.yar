
rule TrojanDownloader_O97M_Emotet_OV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.OV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {5f 50 72 6f 90 02 20 63 90 02 20 65 90 02 20 73 90 02 20 73 90 02 20 22 2c 20 90 02 20 28 90 02 20 28 90 02 15 2e 90 02 15 2e 43 61 70 74 69 6f 6e 29 29 2c 20 90 02 15 29 90 00 } //01 00 
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 02 15 2c 20 90 02 15 2c 20 90 02 15 2c 20 90 02 15 29 90 00 } //01 00 
		$a_03_2 = {3d 20 52 65 70 6c 61 63 65 28 90 02 45 2c 20 90 02 45 2c 20 22 22 29 90 00 } //01 00 
		$a_01_3 = {30 2c 20 30 2c 20 4d 53 46 6f 72 6d 73 2c 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 22 } //00 00  0, 0, MSForms, CommandButton"
	condition:
		any of ($a_*)
 
}