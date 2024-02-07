
rule TrojanDownloader_O97M_Ursnif_BKG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.BKG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {4f 6e 65 20 3d 20 22 50 6c 65 61 73 65 20 65 6e 74 65 72 20 74 68 65 20 6c 69 6e 65 20 6c 65 6e 67 74 68 22 } //01 00  One = "Please enter the line length"
		$a_01_1 = {57 6f 72 6b 73 68 65 65 74 73 28 22 53 68 65 65 74 32 22 29 2e 53 61 76 65 41 73 20 4c 65 6e 67 74 68 20 26 20 4a 69 7a 7a 2c 20 52 65 7a } //01 00  Worksheets("Sheet2").SaveAs Length & Jizz, Rez
		$a_01_2 = {44 69 6d 20 54 77 6f 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim Two As String
		$a_01_3 = {54 77 6f 20 3d 20 22 50 6c 65 61 73 65 20 65 6e 74 65 72 20 74 68 65 20 6c 69 6e 65 20 61 6d 6f 75 6e 74 22 } //01 00  Two = "Please enter the line amount"
		$a_01_4 = {57 6f 72 6b 73 68 65 65 74 73 28 22 53 68 65 65 74 31 22 29 2e 53 61 76 65 41 73 20 4c 65 6e 67 74 68 20 26 20 57 69 7a 7a 2c 20 52 65 7a } //01 00  Worksheets("Sheet1").SaveAs Length & Wizz, Rez
		$a_01_5 = {44 69 6d 20 54 68 72 65 65 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim Three As String
		$a_03_6 = {54 68 72 65 65 20 3d 20 22 50 6c 65 61 73 65 20 65 6e 74 65 72 20 74 68 65 20 6c 69 6e 65 20 6c 65 6e 67 74 68 22 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_01_7 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 53 65 74 74 65 72 28 29 } //01 00  Public Function Setter()
		$a_01_8 = {52 65 7a 20 3d 20 34 32 } //01 00  Rez = 42
		$a_03_9 = {57 69 7a 7a 20 3d 20 22 2e 78 6c 73 22 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_01_10 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 50 75 74 74 65 72 28 29 } //01 00  Public Function Putter()
		$a_01_11 = {4a 69 7a 7a 20 3d 20 22 2e 66 6f 22 } //00 00  Jizz = ".fo"
	condition:
		any of ($a_*)
 
}