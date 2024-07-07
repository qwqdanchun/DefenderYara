
rule TrojanDownloader_O97M_Aptdrop_J{
	meta:
		description = "TrojanDownloader:O97M/Aptdrop.J,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {44 6f 20 57 68 69 6c 65 20 54 72 75 65 } //1 Do While True
		$a_01_1 = {4f 6e 20 45 72 72 6f 72 20 47 6f 54 6f 20 } //1 On Error GoTo 
		$a_03_2 = {53 65 74 20 90 01 04 20 3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 90 01 04 2c 20 90 01 04 28 22 90 00 } //1
		$a_03_3 = {53 65 74 20 90 01 02 20 3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 90 01 02 2c 20 90 01 04 28 22 90 00 } //1
		$a_03_4 = {20 3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 90 01 02 28 31 29 2c 20 90 01 04 28 22 90 00 } //1
		$a_03_5 = {53 65 74 20 90 01 04 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 90 01 04 29 90 00 } //1
		$a_01_6 = {20 3d 20 41 70 70 6c 69 63 61 74 69 6f 6e 0d 0a } //1
		$a_03_7 = {22 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 26 48 38 30 30 30 30 30 30 31 2c 20 90 01 04 2c 20 90 01 04 2c 20 31 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*1) >=8
 
}