
rule TrojanDownloader_O97M_Obfuse_NE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.NE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 43 53 74 72 28 90 00 } //01 00 
		$a_03_1 = {2b 20 22 77 90 02 04 69 90 02 04 6e 90 02 04 6d 67 90 02 04 6d 74 73 90 02 04 3a 57 69 90 02 04 6e 90 02 08 5f 50 72 90 02 04 6f 63 65 90 02 04 73 73 22 29 29 90 00 } //01 00 
		$a_03_2 = {2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //01 00 
		$a_03_3 = {3d 20 52 65 70 6c 61 63 65 28 90 02 35 2c 90 00 } //01 00 
		$a_01_4 = {2c 20 4d 53 46 6f 72 6d 73 2c 20 54 65 78 74 42 6f 78 22 } //01 00  , MSForms, TextBox"
		$a_01_5 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //00 00  Sub autoopen()
	condition:
		any of ($a_*)
 
}