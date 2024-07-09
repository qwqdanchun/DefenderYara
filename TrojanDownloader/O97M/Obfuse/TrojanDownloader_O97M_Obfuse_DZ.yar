
rule TrojanDownloader_O97M_Obfuse_DZ{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DZ,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 06 00 00 "
		
	strings :
		$a_03_0 = {47 65 74 4f 62 6a 65 63 74 28 [0-10] 2e [0-13] 20 2b 20 [0-10] 2e [0-10] 20 2b 20 [0-10] 2e [0-13] 29 [0-01] 20 5f } //1
		$a_03_1 = {43 72 65 61 74 65 [0-01] 20 [0-10] 2e [0-13] 20 2b 20 [0-10] 2e [0-23] 20 2b 20 [0-10] 2e [0-13] 20 2b 20 } //2
		$a_03_2 = {2b 20 52 6f 75 6e 64 28 [0-10] 20 2a 20 54 61 6e 28 [0-10] 20 2f 20 43 68 72 28 } //1
		$a_03_3 = {54 61 6e 28 [0-10] 20 2f 20 43 68 72 28 [0-10] 20 2f 20 43 44 62 6c 28 } //1
		$a_03_4 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 [0-10] 2e [0-10] 2e 56 61 6c 75 65 20 2b 20 [0-10] 2e [0-10] 20 2b 20 [0-10] 2e [0-10] 2e 56 61 6c 75 65 29 } //1
		$a_03_5 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 [0-10] 2e [0-13] 20 2b 20 [0-10] 2e [0-10] 20 2b 20 [0-10] 2e [0-13] 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=4
 
}