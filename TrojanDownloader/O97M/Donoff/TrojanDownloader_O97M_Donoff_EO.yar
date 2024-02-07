
rule TrojanDownloader_O97M_Donoff_EO{
	meta:
		description = "TrojanDownloader:O97M/Donoff.EO,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 11 00 00 01 00 "
		
	strings :
		$a_00_0 = {61 72 72 61 79 28 22 63 6d 64 22 } //01 00  array("cmd"
		$a_02_1 = {61 72 72 61 79 28 2d 90 01 01 2c 20 22 63 6d 64 22 90 00 } //01 00 
		$a_02_2 = {61 72 72 61 79 28 2d 90 01 01 2c 20 2d 90 01 01 2c 20 22 63 6d 64 22 90 00 } //01 00 
		$a_02_3 = {61 72 72 61 79 28 2d 90 01 01 2c 20 2d 90 01 01 2c 20 2d 90 01 01 2c 20 22 63 6d 64 22 90 00 } //01 00 
		$a_02_4 = {61 72 72 61 79 28 2d 90 01 01 2c 20 2d 90 01 01 2c 20 2d 90 01 01 2c 20 2d 90 01 01 2c 20 22 63 6d 64 22 90 00 } //01 00 
		$a_00_5 = {4e 61 4e 2c 20 22 63 6d 64 22 } //01 00  NaN, "cmd"
		$a_00_6 = {61 72 72 61 79 28 22 2e 65 78 22 } //01 00  array(".ex"
		$a_02_7 = {61 72 72 61 79 28 2d 90 01 01 2c 20 22 2e 65 78 22 90 00 } //01 00 
		$a_02_8 = {61 72 72 61 79 28 2d 90 01 01 2c 20 2d 90 01 01 2c 20 22 2e 65 78 22 90 00 } //01 00 
		$a_02_9 = {61 72 72 61 79 28 2d 90 01 01 2c 20 2d 90 01 01 2c 20 2d 90 01 01 2c 20 22 2e 65 78 22 90 00 } //01 00 
		$a_02_10 = {61 72 72 61 79 28 2d 90 01 01 2c 20 2d 90 01 01 2c 20 2d 90 01 01 2c 20 2d 90 01 01 2c 20 22 2e 65 78 22 90 00 } //01 00 
		$a_00_11 = {4e 61 4e 2c 20 22 2e 65 78 22 } //01 00  NaN, ".ex"
		$a_03_12 = {49 66 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 63 72 69 70 74 73 2e 43 6f 75 6e 74 20 3d 20 30 20 54 68 65 6e 0d 0a 90 01 04 90 02 0a 20 3d 20 90 01 03 90 02 05 20 26 20 90 01 03 90 02 05 20 26 20 90 01 03 90 02 05 20 26 90 00 } //01 00 
		$a_01_13 = {49 66 20 56 61 72 54 79 70 65 28 41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 4e 61 6d 65 29 } //01 00  If VarType(ActiveWorkbook.Name)
		$a_01_14 = {49 66 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 54 61 62 6c 65 73 2e 43 6f 75 6e 74 20 3d 20 30 20 54 68 65 6e } //01 00  If ActiveDocument.Tables.Count = 0 Then
		$a_01_15 = {49 66 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 42 75 69 6c 64 20 3e 20 31 30 30 20 54 68 65 6e } //01 00  If Application.Build > 100 Then
		$a_01_16 = {49 66 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 41 63 74 69 76 65 45 6e 63 72 79 70 74 69 6f 6e 53 65 73 73 69 6f 6e 20 54 68 65 6e } //00 00  If Application.ActiveEncryptionSession Then
	condition:
		any of ($a_*)
 
}