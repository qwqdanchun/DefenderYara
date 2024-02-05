
rule TrojanDownloader_O97M_Donoff_PG{
	meta:
		description = "TrojanDownloader:O97M/Donoff.PG,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_02_0 = {2e 6e 61 76 69 67 61 74 65 20 28 22 68 74 74 70 90 02 02 3a 2f 2f 39 32 2e 33 38 2e 31 33 35 2e 39 39 2f 90 02 20 2e 74 78 74 22 29 90 00 } //03 00 
		$a_02_1 = {2e 6e 61 76 69 67 61 74 65 20 28 22 68 74 74 70 90 02 02 3a 2f 2f 32 37 2e 31 30 32 2e 31 30 32 2e 32 33 35 2f 90 02 20 2e 74 78 74 22 29 90 00 } //01 00 
		$a_00_2 = {3d 20 22 6f 75 74 70 75 74 2e 70 64 66 } //01 00 
		$a_00_3 = {3d 20 22 52 65 74 72 61 63 74 2e 64 6c 6c } //01 00 
		$a_02_4 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 45 78 65 63 20 28 22 72 75 6e 64 6c 6c 33 32 20 22 20 2b 20 90 02 20 20 26 20 22 2c 47 65 74 32 22 29 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 42 
	condition:
		any of ($a_*)
 
}