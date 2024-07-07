
rule TrojanDownloader_O97M_Obfuse_HS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {56 62 4d 65 74 68 6f 64 2c 20 90 02 34 28 30 29 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 90 00 } //1
		$a_03_1 = {28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 90 02 14 29 2e 56 61 6c 75 65 29 29 90 00 } //1
		$a_03_2 = {28 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 28 90 02 20 29 2e 52 61 6e 67 65 28 90 02 07 29 2e 56 61 6c 75 65 29 29 90 00 } //1
		$a_03_3 = {53 70 6c 69 74 28 90 02 34 2c 20 22 7c 22 29 90 00 } //1
		$a_03_4 = {47 65 74 4f 62 6a 65 63 74 28 90 02 34 28 31 29 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=4
 
}