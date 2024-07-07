
rule TrojanDownloader_O97M_Obfuse_KK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {28 22 72 65 74 75 72 6e 20 73 65 6c 65 63 74 43 6c 65 61 72 2e 73 70 6c 69 74 28 27 27 29 2e 72 65 76 65 72 73 65 28 29 2e 6a 6f 69 6e 28 27 27 29 3b 7d 6d 61 69 6e 57 69 6e 64 6f 77 54 6d 70 20 3d 22 29 } //1 ("return selectClear.split('').reverse().join('');}mainWindowTmp =")
		$a_01_1 = {3d 20 22 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 64 65 6c 65 74 65 4d 61 69 6e 4d 61 69 6e 2e 68 74 61 22 } //1 = "explorer.exe c:\programdata\deleteMainMain.hta"
		$a_01_2 = {3d 20 53 70 6c 69 74 28 70 28 66 72 6d 2e 67 65 74 77 63 29 2c 20 22 20 22 29 } //1 = Split(p(frm.getwc), " ")
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_KK_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 0c 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 22 20 2b 20 22 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 22 20 2b 20 22 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 22 20 2b 20 22 6d 67 6d 74 73 3a 57 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_5 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 22 20 2b 20 22 6d 67 6d 74 22 20 2b 20 22 73 3a 57 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_6 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 22 20 2b 20 22 57 69 6e 33 32 5f 50 72 6f 22 20 2b 20 22 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_7 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 52 65 70 6c 61 63 65 28 22 77 20 20 20 20 69 20 20 20 20 20 6e 6d 20 20 20 20 67 6d 74 73 3a 57 69 6e 20 20 20 20 33 32 20 20 20 5f 50 72 20 20 20 20 6f 63 20 20 20 65 73 73 22 2c 20 22 20 22 2c 20 22 22 29 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_8 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 52 65 70 6c 61 63 65 28 22 77 69 6e 6d 20 20 20 20 67 6d 74 20 20 20 73 3a 57 69 20 20 20 20 6e 20 20 20 20 33 32 20 20 20 5f 50 72 20 20 20 20 6f 63 65 20 20 20 20 73 73 22 2c 20 22 20 22 2c 20 22 22 29 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_9 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 52 65 70 6c 61 63 65 28 22 40 40 40 77 69 40 40 6e 6d 40 40 40 40 40 40 67 40 6d 74 40 40 40 40 40 73 3a 57 69 6e 40 40 40 40 33 32 5f 50 72 6f 63 40 40 40 40 40 65 73 40 40 40 40 73 22 2c 20 22 40 22 2c 20 22 22 29 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_10 = {2b 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 90 02 09 2e 43 61 70 74 69 6f 6e 20 2b 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 90 00 } //1
		$a_01_11 = {53 68 6f 77 57 69 6e 64 6f 77 21 20 5f } //1 ShowWindow! _
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_01_11  & 1)*1) >=3
 
}