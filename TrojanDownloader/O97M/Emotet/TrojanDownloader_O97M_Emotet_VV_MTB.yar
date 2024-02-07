
rule TrojanDownloader_O97M_Emotet_VV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.VV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 90 02 20 2e 20 5f 90 0c 02 00 43 72 65 61 74 65 28 90 02 20 2c 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c 90 00 } //01 00 
		$a_03_1 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 90 02 10 49 66 90 02 30 54 68 65 6e 90 00 } //01 00 
		$a_01_2 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 20 2b } //01 00  .ControlTipText +
		$a_01_3 = {2e 50 61 67 65 73 28 30 29 2e 43 61 70 74 69 6f 6e } //01 00  .Pages(0).Caption
		$a_03_4 = {73 68 6f 77 77 69 6e 64 6f 77 20 3d 20 90 02 15 20 2b 90 00 } //01 00 
		$a_03_5 = {2b 20 53 74 72 52 65 76 65 72 73 65 28 90 02 20 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}