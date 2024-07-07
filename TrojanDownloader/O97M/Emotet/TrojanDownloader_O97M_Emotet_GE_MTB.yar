
rule TrojanDownloader_O97M_Emotet_GE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.GE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,1f 00 1f 00 0a 00 00 "
		
	strings :
		$a_02_0 = {52 00 65 00 70 00 6c 00 61 00 63 00 65 00 90 02 1e 28 00 90 02 0f 2c 00 20 00 90 02 0f 2c 00 20 00 22 00 22 00 29 00 90 00 } //10
		$a_02_1 = {52 65 70 6c 61 63 65 90 02 1e 28 90 02 0f 2c 20 90 02 0f 2c 20 22 22 29 90 00 } //10
		$a_02_2 = {2e 00 43 00 72 00 65 00 61 00 74 00 65 00 28 00 90 02 1e 2c 00 20 00 90 02 1e 2c 00 20 00 90 02 1e 2c 00 20 00 90 02 1e 29 00 90 00 } //10
		$a_02_3 = {2e 43 72 65 61 74 65 28 90 02 1e 2c 20 90 02 1e 2c 20 90 02 1e 2c 20 90 02 1e 29 90 00 } //10
		$a_02_4 = {3d 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 90 02 1e 28 00 90 02 64 29 00 29 00 90 00 } //10
		$a_02_5 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 1e 28 90 02 64 29 29 90 00 } //10
		$a_02_6 = {45 00 6e 00 64 00 20 00 49 00 66 00 90 02 1e 22 00 90 10 1e 00 77 00 90 10 1e 00 69 00 90 10 1e 00 6e 00 90 10 1e 00 6d 00 90 10 1e 00 67 00 90 10 1e 00 6d 00 90 10 1e 00 74 00 90 10 1e 00 73 00 90 10 1e 00 3a 00 90 10 1e 00 57 00 90 10 1e 00 69 00 90 10 1e 00 6e 00 90 00 } //1
		$a_02_7 = {45 6e 64 20 49 66 90 02 1e 22 90 10 1e 00 77 90 10 1e 00 69 90 10 1e 00 6e 90 10 1e 00 6d 90 10 1e 00 67 90 10 1e 00 6d 90 10 1e 00 74 90 10 1e 00 73 90 10 1e 00 3a 90 10 1e 00 57 90 10 1e 00 69 90 10 1e 00 6e 90 00 } //1
		$a_02_8 = {45 00 6e 00 64 00 20 00 49 00 66 00 90 02 32 5f 00 90 10 1e 00 50 00 90 10 1e 00 72 00 90 10 1e 00 6f 00 90 10 1e 00 63 00 90 10 1e 00 65 00 90 10 1e 00 73 00 90 10 1e 00 73 00 90 10 1e 00 90 00 } //1
		$a_02_9 = {45 6e 64 20 49 66 90 02 32 5f 90 10 1e 00 50 90 10 1e 00 72 90 10 1e 00 6f 90 10 1e 00 63 90 10 1e 00 65 90 10 1e 00 73 90 10 1e 00 73 90 10 1e 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*10+(#a_02_5  & 1)*10+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*1) >=31
 
}