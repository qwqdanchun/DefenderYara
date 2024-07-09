
rule TrojanDownloader_O97M_Bartallex_Q{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.Q,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {46 6f 72 20 69 20 3d 20 31 20 54 6f 20 4c 65 6e 28 73 44 61 74 61 29 20 53 74 65 70 20 32 } //1 For i = 1 To Len(sData) Step 2
		$a_01_1 = {43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 73 44 61 74 61 2c 20 69 2c 20 32 29 29 29 } //1 Chr$(Val("&H" & Mid$(sData, i, 2)))
		$a_03_2 = {53 68 65 6c 6c 28 [0-10] 28 22 36 33 36 44 36 34 32 30 32 46 36 33 32 30 37 33 37 34 36 31 37 32 37 34 32 30 32 35 35 34 34 44 35 30 32 35 32 46 36 31 37 38 36 31 36 35 32 45 36 35 22 29 } //1
		$a_03_3 = {45 6e 76 69 72 6f 6e 28 [0-20] 29 20 26 20 [0-10] 28 22 32 46 36 31 37 38 36 31 36 35 32 45 36 35 22 29 } //1
		$a_01_4 = {3d 20 22 74 70 3a 2f 22 } //1 = "tp:/"
		$a_01_5 = {3d 20 22 65 74 69 6d 67 2e 70 22 } //1 = "etimg.p"
		$a_03_6 = {2b 20 22 74 22 20 2b [0-10] 2b 20 22 2f 22 20 2b [0-10] 2b 20 22 2f 69 6d 61 67 65 73 2f 67 22 20 2b [0-10] 2b 20 22 68 70 22 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1) >=7
 
}