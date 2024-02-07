
rule TrojanDownloader_Linux_Bartallex_T{
	meta:
		description = "TrojanDownloader:Linux/Bartallex.T,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 53 63 72 69 70 74 22 20 2b 20 22 69 6e 67 2e 46 69 6c 65 53 79 22 20 2b 20 22 73 22 } //01 00  = "Script" + "ing.FileSy" + "s"
		$a_01_1 = {3d 20 22 74 65 6d 4f 22 20 2b 20 22 62 22 20 2b 20 22 6a 22 } //01 00  = "temO" + "b" + "j"
		$a_01_2 = {3d 20 22 48 74 74 22 20 2b 20 22 70 22 20 2b 20 22 2e 22 } //01 00  = "Htt" + "p" + "."
		$a_01_3 = {3d 20 22 57 69 22 20 2b 20 22 6e 22 } //01 00  = "Wi" + "n"
		$a_01_4 = {2e 47 65 74 53 70 65 63 69 61 6c 46 6f 6c 64 65 72 28 32 29 20 26 20 22 5c 22 20 2b 20 22 5c 22 } //01 00  .GetSpecialFolder(2) & "\" + "\"
		$a_03_5 = {2e 53 74 61 74 75 73 20 3d 20 90 02 03 20 2b 20 90 02 03 20 2b 20 90 02 03 20 2b 20 90 02 03 20 54 68 65 6e 90 00 } //00 00 
		$a_00_6 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}