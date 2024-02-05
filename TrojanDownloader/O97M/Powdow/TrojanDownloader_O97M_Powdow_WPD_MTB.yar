
rule TrojanDownloader_O97M_Powdow_WPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.WPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 39 36 39 30 30 31 31 32 35 38 33 33 34 38 32 33 31 33 2f 39 36 39 30 30 32 33 39 38 34 35 32 34 34 35 32 31 34 2f 4e 65 71 70 74 73 64 66 65 2e 65 78 65 22 22 20 90 02 1f 2e 65 78 65 2e 65 78 65 20 26 26 20 90 1b 00 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}