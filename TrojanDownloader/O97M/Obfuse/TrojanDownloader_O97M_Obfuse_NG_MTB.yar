
rule TrojanDownloader_O97M_Obfuse_NG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.NG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 09 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 43 53 74 72 28 90 02 35 29 20 2b 20 22 90 02 08 77 69 90 02 08 6e 90 02 08 6d 67 90 02 08 6d 90 02 08 74 73 90 02 08 3a 57 69 90 02 08 6e 90 02 08 5f 90 02 08 50 72 6f 63 90 02 08 65 73 73 90 02 08 22 29 29 29 90 00 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 45 28 90 02 35 29 20 2b 20 22 90 02 14 77 69 6e 6d 67 6d 74 73 3a 90 02 14 57 69 6e 33 32 5f 50 72 6f 63 90 02 14 65 73 73 22 29 29 29 90 00 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 43 53 74 72 28 90 02 35 29 20 2b 20 22 90 02 35 77 69 6e 90 02 10 6d 67 6d 74 73 3a 90 02 10 57 69 6e 33 32 5f 50 72 6f 63 90 02 10 65 73 73 90 02 40 22 29 29 29 90 00 } //1
		$a_03_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 90 02 35 28 43 53 74 72 28 90 02 35 29 20 2b 20 22 90 02 20 77 69 90 02 40 6e 90 02 30 6d 67 6d 74 73 3a 90 02 20 57 69 6e 90 02 45 33 32 5f 50 72 6f 63 90 02 20 65 73 73 22 29 29 29 90 00 } //1
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 35 28 90 02 35 28 43 53 74 72 28 90 02 35 29 20 2b 20 22 90 02 35 77 69 6e 6d 67 6d 74 90 02 20 73 3a 57 69 6e 33 32 5f 90 02 20 50 72 6f 63 65 90 02 20 73 73 22 29 29 29 90 00 } //1
		$a_03_5 = {2e 43 72 65 61 74 65 90 01 01 28 90 02 38 2c 90 00 } //1
		$a_03_6 = {3d 20 52 65 70 6c 61 63 65 28 90 02 35 2c 90 00 } //1
		$a_01_7 = {2c 20 4d 53 46 6f 72 6d 73 2c 20 54 65 78 74 42 6f 78 22 } //1 , MSForms, TextBox"
		$a_01_8 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=5
 
}