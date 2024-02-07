
rule TrojanDropper_O97M_IcedID_RPI_MTB{
	meta:
		description = "TrojanDropper:O97M/IcedID.RPI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {29 66 6f 72 90 02 1f 3d 30 74 6f 90 02 1f 28 90 02 1f 29 2d 31 73 74 65 70 32 90 02 1f 3d 90 1b 00 2f 32 90 02 1f 28 90 1b 03 29 3d 32 35 35 2d 90 02 1f 28 90 02 1f 26 90 02 1f 28 90 1b 02 2c 90 1b 00 29 26 90 1b 09 28 90 1b 02 2c 90 1b 00 2b 31 29 29 6e 65 78 74 90 00 } //01 00 
		$a_03_1 = {66 75 6e 63 74 69 6f 6e 90 02 1f 28 90 02 1f 2c 90 02 1f 2c 6f 70 74 69 6f 6e 61 6c 90 02 1f 3d 66 61 6c 73 65 29 69 66 90 1b 03 74 68 65 6e 90 02 1f 3d 6d 69 64 28 90 1b 01 2c 90 1b 02 2b 31 2c 31 29 65 6c 73 65 90 1b 05 3d 90 02 1f 28 90 02 1f 28 29 2c 90 1b 01 2c 90 1b 02 29 65 6e 64 69 66 90 1b 00 3d 90 1b 05 65 6e 64 66 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_01_2 = {70 72 69 76 61 74 65 73 75 62 64 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 } //01 00  privatesubdocument_open()
		$a_01_3 = {41 6c 69 61 73 20 22 4b 69 6c 6c 54 69 6d 65 72 22 20 28 42 79 56 61 6c } //01 00  Alias "KillTimer" (ByVal
		$a_01_4 = {4c 69 62 20 22 57 69 6e 6d 6d 2e 64 6c 6c 22 20 41 6c 69 61 73 20 22 77 61 76 65 49 6e 4f 70 65 6e 22 20 28 42 79 56 61 6c } //01 00  Lib "Winmm.dll" Alias "waveInOpen" (ByVal
		$a_01_5 = {4c 69 62 20 22 75 73 65 72 33 32 22 20 41 6c 69 61 73 20 22 53 65 74 54 69 6d 65 72 22 20 28 42 79 56 61 6c } //01 00  Lib "user32" Alias "SetTimer" (ByVal
		$a_01_6 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 75 73 74 6f 6d 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 73 74 72 49 6e 70 75 74 29 29 } //01 00  = StrReverse(ActiveDocument.CustomDocumentProperties(strInput))
		$a_03_7 = {28 29 2e 72 65 6d 6f 76 65 28 90 02 1f 28 22 90 02 1f 22 29 29 90 02 1f 28 29 2e 72 65 6d 6f 76 65 28 90 02 1f 28 22 90 02 1f 22 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}