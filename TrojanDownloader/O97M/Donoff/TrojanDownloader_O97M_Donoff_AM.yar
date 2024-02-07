
rule TrojanDownloader_O97M_Donoff_AM{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AM,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 4d 69 63 72 6f 73 6f 66 74 22 20 2b 20 22 2e 58 4d 4c 48 54 54 50 22 29 } //01 00  CreateObject("Microsoft" + ".XMLHTTP")
		$a_03_1 = {72 65 73 75 6c 74 20 3d 20 72 65 73 75 6c 74 20 26 20 43 68 72 28 90 02 10 28 69 29 20 2d 20 90 02 10 20 2d 20 32 38 34 35 29 90 00 } //01 00 
		$a_03_2 = {75 72 6c 41 72 20 3d 20 41 72 72 61 79 28 90 01 04 2c 20 90 01 04 2c 20 90 01 04 2c 20 90 01 04 2c 90 00 } //01 00 
		$a_03_3 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 90 02 10 28 75 72 6c 41 72 2c 20 90 02 04 29 2c 20 46 61 6c 73 65 90 00 } //00 00 
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}