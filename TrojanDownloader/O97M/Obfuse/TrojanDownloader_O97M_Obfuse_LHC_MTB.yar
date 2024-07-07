
rule TrojanDownloader_O97M_Obfuse_LHC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LHC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 28 28 28 90 02 02 20 2a 20 28 41 73 63 28 4d 69 64 28 53 68 65 65 74 73 28 22 90 02 10 22 29 2e 43 65 6c 6c 73 28 90 02 04 2c 20 90 02 03 29 2e 56 61 6c 75 65 2c 20 90 02 10 2c 20 90 02 02 29 29 29 20 2d 20 90 02 03 29 20 2b 20 90 02 03 29 20 2f 20 90 02 03 29 90 00 } //1
		$a_03_1 = {3c 3d 20 4c 65 6e 28 53 68 65 65 74 73 28 22 90 02 10 22 29 2e 43 65 6c 6c 73 28 90 02 04 2c 20 90 02 03 29 2e 56 61 6c 75 65 29 20 54 68 65 6e 90 00 } //1
		$a_01_2 = {53 68 65 6c 6c 20 } //1 Shell 
		$a_03_3 = {47 6f 54 6f 20 90 02 20 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}