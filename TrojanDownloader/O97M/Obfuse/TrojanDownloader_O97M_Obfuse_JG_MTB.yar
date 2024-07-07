
rule TrojanDownloader_O97M_Obfuse_JG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 3a 2f 2f 77 6e 72 66 61 39 79 2e 63 6f 6d 2f 69 7a 35 2f 90 02 0a 2e 70 68 70 3f 6c 3d 90 02 0a 2e 63 61 62 22 2c 20 22 90 02 0a 2e 65 78 70 22 2c 20 30 2c 20 30 29 90 00 } //1
		$a_03_1 = {72 65 67 73 76 72 33 32 20 90 02 0a 2e 65 78 70 22 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}
rule TrojanDownloader_O97M_Obfuse_JG_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {3d 20 75 74 6d 31 20 2b 20 75 74 6d 32 20 2b 20 75 74 6d 33 } //1 = utm1 + utm2 + utm3
		$a_01_1 = {53 68 65 6c 6c 20 28 75 74 6d 29 } //1 Shell (utm)
		$a_03_2 = {74 68 69 72 64 20 3d 20 28 74 68 69 72 64 20 2b 20 90 02 09 28 73 65 63 6f 6e 64 29 20 2b 20 66 6f 75 72 74 68 28 73 65 63 6f 6e 64 20 4d 6f 64 20 4c 65 6e 28 90 02 09 29 29 29 20 4d 6f 64 20 32 35 36 90 00 } //1
		$a_03_3 = {66 6f 75 72 74 68 28 73 65 63 6f 6e 64 29 20 3d 20 66 6f 75 72 74 68 28 73 65 63 6f 6e 64 29 20 58 6f 72 20 90 02 09 28 54 65 6d 70 20 2b 20 90 02 09 28 28 74 68 69 72 64 20 2b 20 90 02 09 28 74 68 69 72 64 29 29 20 4d 6f 64 20 32 35 34 29 29 90 00 } //1
		$a_03_4 = {44 69 6d 20 90 02 09 28 30 20 54 6f 20 32 35 35 29 20 41 73 20 49 6e 74 65 67 65 72 2c 20 73 65 63 6f 6e 64 20 41 73 20 49 6e 74 65 67 65 72 2c 20 74 68 69 72 64 20 41 73 20 4c 6f 6e 67 2c 20 66 6f 75 72 74 68 28 29 20 41 73 20 42 79 74 65 90 00 } //1
		$a_03_5 = {74 68 69 72 64 20 3d 20 28 74 68 69 72 64 20 2b 20 90 02 09 28 74 68 69 72 64 29 20 2b 20 31 29 20 4d 6f 64 20 32 35 36 90 00 } //1
		$a_01_6 = {3d 20 53 74 72 43 6f 6e 76 28 66 6f 75 72 74 68 2c 20 76 62 55 6e 69 63 6f 64 65 29 } //1 = StrConv(fourth, vbUnicode)
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}