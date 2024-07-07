
rule TrojanDownloader_O97M_Obfuse_QK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.QK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {3d 20 6e 65 77 2d 6f 62 6a 65 63 22 20 26 20 22 74 22 20 26 20 22 20 53 79 73 74 65 6d 2e 4e 65 74 2e 57 65 62 43 6c 69 65 6e 74 3b 24 63 6c 69 65 6e 74 2e 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 28 27 68 74 74 70 73 3a 2f 2f 69 6e 65 73 2d 61 72 6e 73 68 6f 66 66 2e 64 65 2f 90 02 18 2e 65 78 65 27 2c 27 22 20 26 20 22 25 22 20 26 20 22 74 65 6d 70 22 20 26 20 22 25 22 20 26 90 00 } //1
		$a_03_1 = {73 74 61 72 74 20 22 20 26 20 22 25 22 20 26 20 22 74 65 6d 70 22 20 26 20 22 25 22 20 26 20 22 5c 90 02 10 2e 70 69 66 22 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}