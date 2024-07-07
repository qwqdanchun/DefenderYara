
rule TrojanDownloader_O97M_Ursnif_ALA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.ALA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {58 74 74 69 6d 65 20 3d 20 28 28 28 28 28 28 28 28 28 28 52 75 6e 28 28 28 28 28 28 28 28 28 28 22 49 22 20 26 20 22 34 22 20 26 20 22 22 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 29 } //1 Xttime = ((((((((((Run(((((((((("I" & "4" & ""))))))))))))))))))))
		$a_01_1 = {46 75 6e 63 74 69 6f 6e 20 4e 6f 75 76 61 50 50 28 64 20 41 73 20 53 74 72 69 6e 67 2c 20 7a 20 41 73 20 49 6e 74 65 67 65 72 29 0d 0a 66 66 20 3d 20 52 69 67 68 74 28 64 2c 20 4c 65 6e 28 64 29 20 2d 20 7a 29 0d 0a 4e 6f 75 76 61 50 50 20 3d 20 4c 65 66 74 28 66 66 2c 20 4c 65 6e 28 66 66 29 20 2d 20 7a 29 } //1
		$a_01_2 = {53 68 65 65 74 73 28 6d 73 6f 4c 69 6e 65 53 69 6e 67 6c 65 29 2e 43 65 6c 6c 73 28 33 37 2c 20 39 29 2e 46 6f 72 6d 75 6c 61 4c 6f 63 61 6c 20 3d 20 48 6f 6e 4e 20 26 20 66 6f 72 63 65 72 } //1 Sheets(msoLineSingle).Cells(37, 9).FormulaLocal = HonN & forcer
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}