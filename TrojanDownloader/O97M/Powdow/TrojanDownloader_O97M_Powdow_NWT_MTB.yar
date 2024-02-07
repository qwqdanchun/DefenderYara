
rule TrojanDownloader_O97M_Powdow_NWT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.NWT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 61 75 74 6f 5f 6f 70 65 6e 28 29 } //01 00  Sub auto_open()
		$a_01_1 = {44 69 6d 20 73 74 72 4d 61 63 72 6f 20 41 73 20 53 74 72 69 6e 67 } //01 00  Dim strMacro As String
		$a_01_2 = {61 79 61 31 20 3d 20 22 3d 22 20 2b 20 43 68 72 28 36 39 29 20 2b 20 22 58 22 } //01 00  aya1 = "=" + Chr(69) + "X"
		$a_01_3 = {61 79 61 32 20 3d 20 43 68 72 28 36 39 29 20 2b 20 43 68 72 28 36 37 29 } //01 00  aya2 = Chr(69) + Chr(67)
		$a_01_4 = {53 68 65 65 74 73 28 22 4d 61 63 72 6f 31 22 29 2e 52 61 6e 67 65 28 22 44 31 32 32 22 29 2e 4e 61 6d 65 20 3d 20 22 6f 6b 22 } //01 00  Sheets("Macro1").Range("D122").Name = "ok"
		$a_01_5 = {53 68 65 65 74 73 28 22 4d 61 63 72 6f 31 22 29 2e 52 61 6e 67 65 28 22 44 31 33 30 22 29 20 3d 20 61 79 61 31 20 2b 20 61 79 61 32 20 2b 20 22 28 22 20 2b 20 53 68 65 65 74 73 28 22 4d 61 63 72 6f 31 22 29 2e 52 61 6e 67 65 28 22 44 31 33 35 22 29 2e 56 61 6c 75 65 } //01 00  Sheets("Macro1").Range("D130") = aya1 + aya2 + "(" + Sheets("Macro1").Range("D135").Value
		$a_01_6 = {73 74 72 4d 61 63 72 6f 20 3d 20 22 6f 6b 22 } //01 00  strMacro = "ok"
		$a_01_7 = {52 75 6e 20 28 73 74 72 4d 61 63 72 6f 29 } //01 00  Run (strMacro)
		$a_01_8 = {53 65 74 20 45 78 63 65 6c 53 68 65 65 74 20 3d 20 4e 6f 74 68 69 6e 67 } //00 00  Set ExcelSheet = Nothing
	condition:
		any of ($a_*)
 
}