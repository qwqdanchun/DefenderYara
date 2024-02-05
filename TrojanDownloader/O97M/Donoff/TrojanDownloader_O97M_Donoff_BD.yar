
rule TrojanDownloader_O97M_Donoff_BD{
	meta:
		description = "TrojanDownloader:O97M/Donoff.BD,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {66 35 44 54 59 59 54 63 36 66 47 20 3d 20 22 54 22 20 2b 20 22 45 22 20 2b 20 22 4d 22 20 2b 20 22 50 22 } //01 00 
		$a_00_1 = {75 75 67 36 36 36 36 36 36 79 66 61 73 64 20 3d 20 45 6e 76 69 72 6f 6e 28 66 35 44 54 59 59 54 63 36 66 47 29 } //01 00 
		$a_00_2 = {64 73 66 66 66 66 66 66 66 66 66 2e 4f 70 65 6e 20 75 75 67 36 36 36 36 36 36 79 66 61 73 64 } //00 00 
	condition:
		any of ($a_*)
 
}