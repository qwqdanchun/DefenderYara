
rule TrojanDownloader_O97M_Donoff_FI{
	meta:
		description = "TrojanDownloader:O97M/Donoff.FI,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 74 6e 28 90 05 05 04 30 2d 39 2e 29 20 90 03 01 01 2b 2d 20 41 74 6e 28 90 05 05 04 30 2d 39 2e 29 90 00 } //01 00 
		$a_03_1 = {4c 54 72 69 6d 28 22 90 02 20 22 29 20 2b 20 4c 54 72 69 6d 28 22 90 02 20 22 29 90 00 } //01 00 
		$a_01_2 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}