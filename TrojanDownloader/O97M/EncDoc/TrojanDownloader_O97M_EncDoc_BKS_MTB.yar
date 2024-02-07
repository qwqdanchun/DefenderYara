
rule TrojanDownloader_O97M_EncDoc_BKS_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.BKS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 43 72 65 61 74 65 54 61 62 6c 65 28 54 61 62 6c 65 4e 61 6d 65 20 41 73 20 53 74 72 69 6e 67 29 } //01 00  Public Function CreateTable(TableName As String)
		$a_01_1 = {44 69 6d 20 54 65 6d 70 4f 6e 65 20 41 73 20 53 74 72 69 6e 67 2c 20 54 65 6d 70 74 77 6f 20 41 73 20 53 74 72 69 6e 67 2c 20 54 65 6d 70 54 68 72 65 65 20 41 73 20 53 74 72 69 6e 67 2c 20 54 65 6d 70 46 6f 75 72 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim TempOne As String, Temptwo As String, TempThree As String, TempFour As String
		$a_01_2 = {54 65 6d 70 4f 6e 65 20 3d 20 22 2e 78 6c 73 22 } //01 00  TempOne = ".xls"
		$a_01_3 = {54 65 6d 70 74 77 6f 20 3d 20 22 2e 64 70 64 22 } //01 00  Temptwo = ".dpd"
		$a_01_4 = {54 65 6d 70 54 68 72 65 65 20 3d 20 22 53 68 65 65 74 32 22 } //01 00  TempThree = "Sheet2"
		$a_01_5 = {54 65 6d 70 46 6f 75 72 20 3d 20 22 53 68 65 65 74 31 22 } //01 00  TempFour = "Sheet1"
		$a_01_6 = {53 61 76 65 54 61 62 6c 65 20 54 65 6d 70 54 68 72 65 65 2c 20 54 61 62 6c 65 4e 61 6d 65 2c 20 54 65 6d 70 74 77 6f } //01 00  SaveTable TempThree, TableName, Temptwo
		$a_01_7 = {53 61 76 65 54 61 62 6c 65 20 54 65 6d 70 46 6f 75 72 2c 20 54 61 62 6c 65 4e 61 6d 65 2c 20 54 65 6d 70 4f 6e 65 } //01 00  SaveTable TempFour, TableName, TempOne
		$a_01_8 = {44 69 6d 20 52 65 73 75 6c 74 20 41 73 20 4c 6f 6e 67 } //01 00  Dim Result As Long
		$a_01_9 = {52 65 73 75 6c 74 20 3d 20 32 20 2b 20 32 30 20 2a 20 32 } //01 00  Result = 2 + 20 * 2
		$a_01_10 = {57 6f 72 6b 73 68 65 65 74 73 28 54 61 62 6c 65 49 44 29 2e 53 61 76 65 41 73 20 41 64 64 72 20 26 20 46 6f 72 6d 61 74 4e 2c 20 52 65 73 75 6c 74 } //01 00  Worksheets(TableID).SaveAs Addr & FormatN, Result
		$a_01_11 = {52 65 73 75 6c 74 20 3d 20 52 65 73 75 6c 74 20 2d 20 34 } //00 00  Result = Result - 4
	condition:
		any of ($a_*)
 
}