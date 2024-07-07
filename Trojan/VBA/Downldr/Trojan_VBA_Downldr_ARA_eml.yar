
rule Trojan_VBA_Downldr_ARA_eml{
	meta:
		description = "Trojan:VBA/Downldr.ARA!eml,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_02_0 = {70 72 61 6c 74 64 2e 63 6f 6d 2f 90 02 05 2e 65 78 65 90 0a 28 00 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 27 68 74 74 70 3a 2f 2f 90 00 } //10
		$a_02_1 = {31 73 74 63 68 6f 69 63 65 70 65 73 74 63 6f 6e 74 72 6f 6c 2e 63 6f 2e 7a 61 2f 90 02 05 2e 65 78 65 90 0a 2b 00 68 74 74 70 3a 2f 2f 90 00 } //10
		$a_01_2 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //2 Sub Document_Open()
		$a_01_3 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 61 61 61 61 61 61 61 61 33 35 36 36 73 64 66 66 2c 20 54 72 75 65 2c 20 54 72 75 65 29 } //2 .CreateTextFile(aaaaaaaa3566sdff, True, True)
		$a_01_4 = {2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 28 61 61 61 61 61 61 61 61 33 35 36 36 73 64 66 66 29 } //2 .ShellExecute (aaaaaaaa3566sdff)
		$a_01_5 = {53 65 6c 65 63 74 69 6f 6e 2e 46 69 6e 64 2e 45 78 65 63 75 74 65 20 52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c } //2 Selection.Find.Execute Replace:=wdReplaceAll
		$a_01_6 = {61 61 61 61 61 61 61 61 33 35 36 36 73 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 } //2 aaaaaaaa3566s = CreateObject(
		$a_03_7 = {20 2b 20 49 49 66 28 28 90 02 03 20 2b 20 90 02 03 29 20 3d 20 90 02 03 2c 20 22 90 02 05 22 2c 20 22 56 22 29 90 00 } //1
		$a_03_8 = {41 70 70 6c 69 63 61 74 69 6f 6e 2e 52 75 6e 20 22 90 02 2f 22 2c 20 90 02 2f 2c 20 90 02 05 20 2b 20 90 00 } //1
		$a_03_9 = {20 2b 20 49 49 66 28 28 90 02 03 20 2b 20 90 02 03 29 20 3d 20 90 02 03 2c 20 22 90 02 05 22 2c 20 22 90 02 0a 22 29 90 00 } //8
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*8) >=10
 
}