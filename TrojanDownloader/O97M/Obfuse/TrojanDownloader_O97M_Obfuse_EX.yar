
rule TrojanDownloader_O97M_Obfuse_EX{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.EX,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 10 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 [0-01] [0-20] 20 2b 20 [0-25] 20 2b 20 } //2
		$a_03_1 = {47 65 74 4f 62 6a 65 63 74 28 [0-10] 28 22 57 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 53 22 29 29 } //1
		$a_01_2 = {22 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 53 73 74 61 72 74 75 70 22 29 29 } //1 "s:Win32_ProcesSstartup"))
		$a_03_3 = {47 65 74 4f 62 6a 65 63 74 28 [0-10] 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 22 20 2b 20 22 5f 50 72 6f 63 65 73 73 22 29 29 } //1
		$a_03_4 = {47 65 74 4f 62 6a 65 63 74 28 [0-10] 28 22 77 69 6e 6d 67 22 20 2b 20 [0-10] 28 22 6d 74 73 3a 57 69 6e 33 32 22 29 20 2b 20 22 5f 50 72 6f 63 65 73 73 22 29 29 } //1
		$a_01_5 = {28 22 6d 74 73 3a 57 69 6e 33 32 22 29 20 2b 20 22 5f 50 72 6f 63 65 73 73 22 29 29 } //1 ("mts:Win32") + "_Process"))
		$a_03_6 = {28 22 57 69 6e 6d 47 6d 74 73 3a 57 69 22 20 2b 20 [0-10] 28 22 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 29 29 } //1
		$a_03_7 = {28 22 77 69 6e 22 20 2b 20 [0-10] 28 [0-10] 28 22 6d 67 6d 74 73 3a 77 22 29 29 20 2b 20 22 69 6e 33 32 5f 70 72 6f 63 65 73 73 22 29 29 } //1
		$a_01_8 = {47 65 74 4f 62 6a 65 63 74 28 22 77 69 22 20 2b 20 22 6e 22 20 2b 20 22 6d 67 22 20 2b 20 22 6d 74 73 3a 77 22 20 2b 20 22 69 6e 33 32 22 20 2b 20 22 5f 70 72 6f 63 22 20 2b 20 22 65 73 73 22 29 20 5f } //1 GetObject("wi" + "n" + "mg" + "mts:w" + "in32" + "_proc" + "ess") _
		$a_01_9 = {2b 20 22 6d 74 73 3a 77 22 20 2b 20 22 69 6e 33 32 22 20 2b 20 22 5f 70 72 6f 63 22 20 5f } //1 + "mts:w" + "in32" + "_proc" _
		$a_01_10 = {28 22 6d 74 73 3a 57 22 20 2b 20 22 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 } //1 ("mts:W" + "in" + "32_Process")
		$a_01_11 = {2b 20 22 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 20 2b 20 5f } //1 + "in" + "32_Process") + _
		$a_01_12 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 } //1 CreateObject("winmgmts:Win32_Process")
		$a_01_13 = {4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 22 20 2b 20 22 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 } //1 Object("winmgmts:Wi" + "n32_Process")
		$a_03_14 = {2b 20 22 77 69 6e 6d 67 6d 74 73 3a 57 69 22 20 2b 20 [0-10] 20 2b 20 22 6e 33 32 5f 50 72 6f 63 65 73 73 22 20 2b } //1
		$a_03_15 = {53 68 6f 77 57 69 6e 64 6f 77 20 3d 20 [0-14] 20 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1) >=4
 
}