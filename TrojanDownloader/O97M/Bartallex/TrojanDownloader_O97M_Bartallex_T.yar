
rule TrojanDownloader_O97M_Bartallex_T{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.T,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 3d 20 22 53 63 72 69 70 74 69 6e 67 2e 46 22 20 2b 20 22 69 6c 65 53 79 22 20 2b 20 22 73 22 } //01 00   = "Scripting.F" + "ileSy" + "s"
		$a_01_1 = {20 3d 20 22 65 22 20 2b 20 22 63 22 20 2b 20 22 74 22 } //01 00   = "e" + "c" + "t"
		$a_01_2 = {20 3d 20 22 74 65 6d 22 20 2b 20 22 4f 62 22 20 2b 20 22 6a 22 } //01 00   = "tem" + "Ob" + "j"
		$a_01_3 = {20 3d 20 22 57 69 22 20 2b 20 22 6e 22 } //01 00   = "Wi" + "n"
		$a_01_4 = {20 3d 20 22 48 74 74 70 22 20 2b 20 22 2e 22 } //01 00   = "Http" + "."
		$a_03_5 = {2e 53 74 61 74 75 73 20 3d 20 90 02 03 20 2b 20 90 02 03 20 2b 20 90 02 03 20 2b 20 90 02 03 20 54 68 65 6e 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 4a 
	condition:
		any of ($a_*)
 
}