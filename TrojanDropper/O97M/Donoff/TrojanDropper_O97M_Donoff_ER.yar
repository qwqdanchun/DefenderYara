
rule TrojanDropper_O97M_Donoff_ER{
	meta:
		description = "TrojanDropper:O97M/Donoff.ER,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 52 75 6e 28 90 12 15 00 2c 20 90 12 15 00 29 90 00 } //02 00 
		$a_03_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 4a 6f 69 6e 28 90 12 15 00 2c 20 22 22 29 29 90 00 } //02 00 
		$a_03_2 = {46 6f 72 20 90 12 30 00 20 3d 20 31 20 54 6f 20 4c 65 6e 28 90 12 30 00 29 0d 0a 90 02 40 0d 0a 44 69 6d 20 90 12 30 00 20 41 73 20 53 74 72 69 6e 67 90 02 60 0d 0a 44 69 6d 20 90 12 30 00 20 41 73 20 53 74 72 69 6e 67 90 02 70 3d 20 4d 69 64 28 90 1b 01 2c 20 90 12 30 00 2c 20 31 29 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}