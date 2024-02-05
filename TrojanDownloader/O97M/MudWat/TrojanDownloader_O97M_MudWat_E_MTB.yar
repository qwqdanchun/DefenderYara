
rule TrojanDownloader_O97M_MudWat_E_MTB{
	meta:
		description = "TrojanDownloader:O97M/MudWat.E!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 90 02 10 2c 20 90 02 15 28 90 02 03 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 90 02 15 28 90 02 03 29 2c 20 22 22 29 90 00 } //01 00 
		$a_03_1 = {3d 20 41 73 63 28 4d 69 64 28 90 02 15 2c 20 28 90 02 15 20 4d 6f 64 20 4c 65 6e 28 90 02 15 29 20 2b 20 90 02 02 29 2c 90 00 } //01 00 
		$a_03_2 = {2b 20 53 68 65 65 74 32 2e 52 61 6e 67 65 28 90 02 05 20 2b 20 43 53 74 72 28 90 02 15 29 29 2e 56 61 6c 75 65 90 00 } //01 00 
		$a_03_3 = {3d 20 53 70 6c 69 74 28 90 02 10 2c 20 22 2e 22 29 90 00 } //01 00 
		$a_03_4 = {3d 20 53 70 6c 69 74 28 90 02 10 2c 20 22 3a 3a 22 29 90 00 } //01 00 
		$a_01_5 = {3d 20 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 4e 61 6d 65 } //01 00 
		$a_01_6 = {50 72 69 6e 74 20 23 31 2c } //01 00 
		$a_01_7 = {3d 20 22 22 } //00 00 
	condition:
		any of ($a_*)
 
}