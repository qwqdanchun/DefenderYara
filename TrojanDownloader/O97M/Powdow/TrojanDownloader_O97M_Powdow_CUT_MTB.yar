
rule TrojanDownloader_O97M_Powdow_CUT_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.CUT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 61 75 74 6f 5f 6f 70 65 6e 28 29 } //01 00  Sub auto_open()
		$a_01_1 = {70 64 20 3d 20 22 58 22 } //01 00  pd = "X"
		$a_01_2 = {6f 79 6f 31 20 3d 20 22 3d 45 22 20 2b 20 70 64 } //01 00  oyo1 = "=E" + pd
		$a_01_3 = {6f 79 6f 32 20 3d 20 43 68 72 28 36 39 29 20 2b 20 43 68 72 28 36 37 29 } //01 00  oyo2 = Chr(69) + Chr(67)
		$a_01_4 = {53 68 65 65 74 73 28 22 4d 61 63 72 6f 31 22 29 2e 52 61 6e 67 65 28 22 44 31 32 31 22 29 2e 4e 61 6d 65 20 3d 20 22 66 64 70 22 } //01 00  Sheets("Macro1").Range("D121").Name = "fdp"
		$a_01_5 = {53 68 65 65 74 73 28 22 4d 61 63 72 6f 31 22 29 2e 52 61 6e 67 65 28 22 44 31 33 30 22 29 20 3d 20 6f 79 6f 31 20 2b 20 6f 79 6f 32 20 2b 20 22 28 22 20 2b 20 53 68 65 65 74 73 28 22 4d 61 63 72 6f 31 22 29 2e 52 61 6e 67 65 28 22 44 31 33 35 22 29 2e 56 61 6c 75 65 } //01 00  Sheets("Macro1").Range("D130") = oyo1 + oyo2 + "(" + Sheets("Macro1").Range("D135").Value
		$a_01_6 = {73 74 72 4d 61 63 72 6f 20 3d 20 22 66 64 70 22 } //01 00  strMacro = "fdp"
		$a_01_7 = {52 75 6e 20 28 73 74 72 4d 61 63 72 6f 29 } //00 00  Run (strMacro)
	condition:
		any of ($a_*)
 
}