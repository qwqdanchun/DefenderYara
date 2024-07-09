
rule TrojanDownloader_O97M_MudWat_D_MTB{
	meta:
		description = "TrojanDownloader:O97M/MudWat.D!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 28 22 53 68 65 65 74 31 22 29 } //1 ThisWorkbook.Sheets("Sheet1")
		$a_03_1 = {2c 20 56 62 4d 65 74 68 6f 64 2c 20 [0-20] 2c 20 45 6e 76 69 72 6f 6e 28 [0-20] 29 20 26 } //1
		$a_03_2 = {3d 20 41 73 63 28 4d 69 64 28 ?? 2c 20 28 ?? 20 4d 6f 64 20 4c 65 6e 28 } //1
		$a_01_3 = {2e 54 65 78 74 2c 20 22 2e 22 29 } //1 .Text, ".")
		$a_01_4 = {3d 20 22 22 } //1 = ""
		$a_03_5 = {4f 70 65 6e 20 45 6e 76 69 72 6f 6e 28 [0-20] 29 20 26 20 [0-20] 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 } //1
		$a_01_6 = {43 6c 6f 73 65 20 23 31 } //1 Close #1
		$a_01_7 = {50 72 69 6e 74 20 23 31 2c } //1 Print #1,
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}