
rule TrojanDownloader_O97M_Bartallex_V{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.V,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {52 65 70 6c 61 63 65 28 22 90 02 10 2e 74 78 74 22 2c 20 22 74 22 2c 20 22 65 22 29 90 00 } //1
		$a_03_1 = {20 3d 20 41 72 72 61 79 28 90 10 05 00 2c 20 90 10 05 00 2c 20 90 10 05 00 90 00 } //1
		$a_03_2 = {2e 4f 70 65 6e 20 56 6f 4c 28 90 10 02 00 29 2c 20 90 02 14 28 90 02 10 2c 20 90 10 03 00 29 2c 20 46 61 6c 73 65 90 00 } //1
		$a_03_3 = {20 26 20 43 68 72 28 90 02 10 28 90 02 10 29 20 2d 20 90 10 04 00 20 2d 20 90 02 10 20 2d 20 90 10 04 00 20 2d 20 90 10 04 00 20 2a 20 90 02 10 20 2d 20 90 10 04 00 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}