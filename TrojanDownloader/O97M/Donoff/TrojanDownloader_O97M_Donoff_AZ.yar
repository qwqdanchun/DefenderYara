
rule TrojanDownloader_O97M_Donoff_AZ{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AZ,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 45 6e 76 69 72 6f 6e 28 43 68 72 57 28 38 34 29 20 26 20 43 68 72 57 28 36 39 29 20 2b 20 43 68 72 57 28 37 37 29 20 26 20 43 68 72 57 28 38 30 29 29 20 26 20 90 02 10 2e 54 65 78 74 42 6f 78 90 00 } //01 00 
		$a_03_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 10 2e 54 65 78 74 42 6f 78 90 02 01 29 90 00 } //01 00 
		$a_03_2 = {2e 4f 70 65 6e 20 43 68 72 57 28 37 31 29 20 26 20 43 68 72 57 28 36 39 29 20 2b 20 43 68 72 57 28 38 34 29 2c 20 90 02 10 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_03_3 = {4f 70 65 6e 20 90 02 10 20 46 6f 72 20 42 69 6e 61 72 79 20 41 63 63 65 73 73 20 57 72 69 74 65 20 41 73 20 23 90 00 } //01 00 
		$a_03_4 = {20 3d 20 53 68 65 6c 6c 28 90 02 10 2c 20 76 62 48 69 64 65 29 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 73 
	condition:
		any of ($a_*)
 
}