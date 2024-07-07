
rule TrojanDownloader_O97M_Obfuse_DZ{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DZ,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {47 65 74 4f 62 6a 65 63 74 28 90 02 10 2e 90 02 13 20 2b 20 90 02 10 2e 90 02 10 20 2b 20 90 02 10 2e 90 02 13 29 90 02 01 20 5f 90 00 } //1
		$a_03_1 = {43 72 65 61 74 65 90 02 01 20 90 02 10 2e 90 02 13 20 2b 20 90 02 10 2e 90 02 23 20 2b 20 90 02 10 2e 90 02 13 20 2b 20 90 00 } //2
		$a_03_2 = {2b 20 52 6f 75 6e 64 28 90 02 10 20 2a 20 54 61 6e 28 90 02 10 20 2f 20 43 68 72 28 90 00 } //1
		$a_03_3 = {54 61 6e 28 90 02 10 20 2f 20 43 68 72 28 90 02 10 20 2f 20 43 44 62 6c 28 90 00 } //1
		$a_03_4 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 90 02 10 2e 90 02 10 2e 56 61 6c 75 65 20 2b 20 90 02 10 2e 90 02 10 20 2b 20 90 02 10 2e 90 02 10 2e 56 61 6c 75 65 29 90 00 } //1
		$a_03_5 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 90 02 10 2e 90 02 13 20 2b 20 90 02 10 2e 90 02 10 20 2b 20 90 02 10 2e 90 02 13 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=4
 
}