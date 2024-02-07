
rule TrojanDropper_O97M_Artitex_A{
	meta:
		description = "TrojanDropper:O97M/Artitex.A,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 41 73 20 46 69 6c 65 4e 61 6d 65 3a 3d 4e 61 6d 65 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 77 64 46 6f 72 6d 61 74 52 54 46 } //01 00  ActiveDocument.SaveAs FileName:=Name, FileFormat:=wdFormatRTF
		$a_01_1 = {64 6f 63 57 6f 72 64 20 3d 20 61 70 70 57 6f 72 64 2e 44 6f 63 75 6d 65 6e 74 73 2e 4f 70 65 6e 28 54 43 41 29 } //01 00  docWord = appWord.Documents.Open(TCA)
		$a_01_2 = {53 61 76 65 41 73 52 54 46 28 4e 61 6d 65 20 41 73 20 53 74 72 69 6e 67 29 } //02 00  SaveAsRTF(Name As String)
		$a_01_3 = {54 4d 50 20 3d 20 45 6e 76 69 72 6f 6e 24 28 22 54 45 4d 50 22 29 } //02 00  TMP = Environ$("TEMP")
		$a_01_4 = {54 45 58 20 3d 20 54 4d 50 20 2b 20 22 71 32 2e 65 78 22 20 2b 20 22 65 22 } //02 00  TEX = TMP + "q2.ex" + "e"
		$a_03_5 = {54 45 58 20 3d 20 54 4d 50 20 2b 20 22 70 6d 90 02 02 2e 22 20 26 20 22 65 78 22 90 00 } //00 00 
		$a_00_6 = {5d 04 00 00 } //7e 67 
	condition:
		any of ($a_*)
 
}