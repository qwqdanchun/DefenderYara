
rule TrojanDownloader_O97M_Donoff_DH{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DH,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {20 3d 20 22 68 70 3f 66 3d 22 } //01 00 
		$a_00_1 = {20 3d 20 22 28 27 68 74 74 22 } //01 00 
		$a_00_2 = {20 3d 20 22 34 30 34 27 2c 22 } //01 00 
		$a_00_3 = {20 3d 20 22 25 2e 45 58 45 22 } //01 00 
		$a_00_4 = {20 3d 20 22 70 3a 2f 2f 64 22 } //01 00 
		$a_00_5 = {20 3d 20 22 63 6d 44 2e 65 22 } //01 00 
		$a_01_6 = {20 3d 20 22 45 52 52 4f 22 } //01 00 
		$a_02_7 = {20 3e 20 30 20 54 68 65 6e 0d 0a 53 68 65 6c 6c 20 90 02 08 2c 20 90 02 08 0d 0a 4d 73 67 42 6f 78 20 90 02 08 0d 0a 45 6e 64 20 49 66 0d 0a 45 6e 64 20 53 75 62 0d 0a 53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 0d 0a 90 02 08 0d 0a 45 6e 64 20 53 75 62 90 00 } //00 00 
		$a_00_8 = {5d 04 00 00 4e } //97 03 
	condition:
		any of ($a_*)
 
}