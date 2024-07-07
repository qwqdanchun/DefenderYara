
rule TrojanDropper_O97M_Powdow_BTCB_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.BTCB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 90 02 30 20 3d 20 6d 61 69 6e 2e 72 28 22 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 90 02 20 2e 68 22 29 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //1
		$a_03_1 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 90 02 30 20 3d 20 6d 61 69 6e 2e 72 28 22 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 02 20 2e 68 74 22 29 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //1
		$a_03_2 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 6d 61 69 6e 22 90 0c 02 00 50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 72 28 90 02 20 29 90 02 20 3d 20 90 02 20 20 26 20 22 90 02 01 61 22 90 00 } //1
		$a_01_3 = {6d 73 67 62 6f 78 20 22 45 72 72 6f 72 20 68 61 73 20 6f 63 63 75 72 72 65 64 3a 20 45 78 74 65 72 6e 61 6c 20 74 61 62 6c 65 20 69 73 20 6e 6f 74 20 69 6e 20 74 68 65 20 65 78 70 65 63 74 65 64 20 66 6f 72 6d 61 74 2e 22 2c 20 31 36 2c 20 22 4d 69 63 72 6f 73 6f 66 74 20 57 6f 72 64 22 } //1 msgbox "Error has occurred: External table is not in the expected format.", 16, "Microsoft Word"
		$a_01_4 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 46 69 6e 64 2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 25 5f 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 22 22 2c 20 52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c } //1 ActiveDocument.Content.Find.Execute FindText:="%_", ReplaceWith:="", Replace:=wdReplaceAll
		$a_03_5 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 90 02 20 2e 72 75 6e 20 90 02 20 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1) >=5
 
}