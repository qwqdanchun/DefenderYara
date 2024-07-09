
rule TrojanDownloader_O97M_Ursnif_AJQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AJQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {50 72 69 76 61 74 65 20 53 75 62 20 43 6f 6d 6d 61 6e 64 42 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //1 Private Sub CommandButton1_Click()
		$a_01_1 = {4c 69 73 74 42 6f 78 31 2e 41 64 64 49 74 65 6d 20 28 49 6d 61 67 65 31 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 29 } //1 ListBox1.AddItem (Image1.ControlTipText)
		$a_03_2 = {4c 69 73 74 42 6f 78 31 2e 41 64 64 49 74 65 6d 20 28 22 3a 2f 2f [0-30] 2e 63 61 73 61 2f 66 6f 6f 74 65 72 2e 6a 70 67 22 29 90 0c 02 00 45 6e 64 20 53 75 62 } //1
		$a_03_3 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e [0-20] 20 3d 20 22 43 3a 5c 75 73 65 72 73 5c 50 75 62 6c 69 63 5c 22 20 2b 20 22 [0-06] 2e 6a 70 67 22 } //1
		$a_03_4 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e [0-20] 20 3d 20 22 68 74 74 70 22 } //1
		$a_03_5 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e [0-20] 20 3d 20 22 47 45 54 22 } //1
		$a_03_6 = {49 6e 73 74 72 75 6d 65 6e 74 61 74 69 6f 6e 55 74 69 6c 2e [0-20] 20 26 20 4c 69 73 74 42 6f 78 31 2e 4c 69 73 74 28 33 29 2c 20 46 61 6c 73 65 } //1
		$a_03_7 = {53 68 65 6c 6c 21 20 22 22 20 2b 20 28 28 [0-20] 20 2b 20 22 20 22 20 26 20 [0-20] 29 29 } //1
		$a_01_8 = {3d 20 4c 65 6e 28 22 5a 5a 5a 22 29 20 54 68 65 6e } //1 = Len("ZZZ") Then
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}