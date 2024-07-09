
rule TrojanDownloader_O97M_Obfuse_NO_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.NO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 11 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-20] 77 69 6e 6d 67 6d [0-20] 74 73 3a 57 69 [0-20] 6e 33 32 5f 50 72 6f [0-20] 63 65 73 73 [0-20] 22 29 29 29 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-25] 77 69 [0-25] 6e 6d 67 6d [0-25] 74 73 3a 57 69 [0-25] 6e 33 32 5f 50 72 6f [0-25] 63 65 [0-20] 73 73 [0-25] 22 29 29 29 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-25] 77 69 [0-25] 6e 6d 67 6d [0-25] 74 73 3a 57 69 [0-25] 6e 33 32 [0-25] 5f 50 72 6f [0-25] 63 65 [0-25] 73 73 [0-25] 22 29 29 29 } //1
		$a_03_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-20] 77 69 [0-20] 6e 6d 67 6d [0-20] 74 73 3a 57 [0-20] 69 6e 33 32 5f [0-20] 50 72 6f 63 [0-20] 65 73 73 22 29 29 29 } //1
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-20] 77 69 6e [0-20] 6d 67 6d 74 [0-20] 73 3a 57 69 [0-20] 6e 33 32 5f [0-25] 50 72 6f 63 [0-20] 65 73 73 [0-20] 22 29 29 29 } //1
		$a_03_5 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-20] 77 69 6e 6d [0-20] 67 6d 74 [0-20] 73 3a 57 [0-20] 69 6e 33 32 [0-20] 5f 50 72 6f 63 [0-20] 65 73 73 [0-20] 22 29 29 29 } //1
		$a_03_6 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-25] 77 [0-25] 69 6e 6d [0-25] 67 [0-25] 6d 74 [0-25] 73 [0-25] 3a 57 [0-25] 69 6e 33 32 [0-25] 5f 50 72 [0-25] 6f 63 [0-25] 65 [0-35] 73 73 [0-25] 22 29 29 29 } //1
		$a_03_7 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-35] 77 69 6e [0-35] 6d 67 6d [0-75] 74 73 3a 57 [0-35] 69 6e 33 [0-35] 32 5f 50 72 6f [0-35] 63 65 73 73 [0-35] 22 29 29 29 } //1
		$a_03_8 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-25] 77 69 6e [0-25] 6d 67 [0-25] 6d [0-50] 74 73 3a 57 [0-25] 69 6e 33 [0-25] 32 5f 50 72 6f [0-25] 63 [0-20] 65 73 73 [0-30] 22 29 29 29 } //1
		$a_03_9 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-35] 77 [0-10] 69 6e [0-25] 6d 67 [0-10] 6d [0-45] 74 73 [0-05] 3a 57 [0-35] 69 6e 33 [0-35] 32 5f 50 72 6f [0-35] 65 73 73 [0-35] 22 29 29 29 } //1
		$a_03_10 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-25] 77 69 [0-25] 6e [0-25] 6d 67 6d [0-25] 74 73 3a [0-25] 57 [0-25] 69 6e 33 32 [0-25] 5f 50 [0-25] 72 6f [0-25] 63 65 [0-25] 73 73 [0-25] 22 29 29 29 } //1
		$a_03_11 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-25] 77 69 [0-10] 6e [0-10] 6d [0-10] 67 6d [0-10] 74 73 3a [0-25] 57 [0-10] 69 6e 33 32 [0-10] 5f 50 [0-30] 72 6f [0-25] 63 65 [0-10] 73 73 [0-25] 22 29 29 29 } //1
		$a_03_12 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-35] 28 [0-35] 28 43 53 74 72 28 [0-35] 29 20 2b 20 22 [0-35] 77 [0-35] 6e [0-35] 6d [0-35] 67 6d [0-35] 74 73 3a [0-35] 57 [0-20] 69 6e [0-35] 33 32 [0-20] 5f 50 [0-35] 72 6f [0-35] 63 65 [0-35] 73 73 [0-35] 22 29 29 29 } //1
		$a_03_13 = {2e 43 72 65 61 74 65 ?? 28 [0-38] 2c } //1
		$a_03_14 = {3d 20 52 65 70 6c 61 63 65 28 [0-35] 2c } //1
		$a_01_15 = {2c 20 4d 53 46 6f 72 6d 73 2c 20 54 65 78 74 42 6f 78 22 } //1 , MSForms, TextBox"
		$a_01_16 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*1+(#a_01_15  & 1)*1+(#a_01_16  & 1)*1) >=5
 
}