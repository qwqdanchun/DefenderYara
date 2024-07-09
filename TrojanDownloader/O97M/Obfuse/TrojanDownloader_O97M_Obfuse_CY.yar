
rule TrojanDownloader_O97M_Obfuse_CY{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CY,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 08 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //1 Sub autoopen()
		$a_02_1 = {53 68 65 6c 6c 20 [0-70] 2c 20 } //1
		$a_02_2 = {43 68 72 28 [0-20] 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 [0-40] 29 20 2b 20 [0-80] 2c 20 90 10 07 00 20 2d 20 90 10 07 00 } //10
		$a_02_3 = {43 56 61 72 28 [0-50] 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 [0-80] 29 20 2b 20 [0-90] 2c 20 90 10 07 00 20 2d 20 90 10 07 00 } //10
		$a_02_4 = {43 49 6e 74 28 [0-50] 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 [0-70] 29 20 2b 20 [0-70] 29 20 2b 20 [0-80] 2c 20 90 10 07 00 20 2d 20 90 10 07 00 } //10
		$a_02_5 = {43 68 72 28 [0-40] 20 2b 20 43 53 74 72 28 [0-40] 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 [0-40] 29 20 2b 20 [0-50] 29 20 2b 20 [0-80] 2c 20 90 10 07 00 20 2d 20 90 10 07 00 } //10
		$a_02_6 = {43 68 72 28 [0-40] 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 [0-40] 29 20 2b 20 43 68 72 28 [0-40] 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 4f 20 2b 20 [0-40] 29 } //10
		$a_02_7 = {43 68 72 28 [0-20] 20 2b 20 [0-30] 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 [0-01] 2e 76 62 4b 65 79 50 20 2b 20 [0-40] 29 20 2b 20 } //10
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*10+(#a_02_5  & 1)*10+(#a_02_6  & 1)*10+(#a_02_7  & 1)*10) >=12
 
}