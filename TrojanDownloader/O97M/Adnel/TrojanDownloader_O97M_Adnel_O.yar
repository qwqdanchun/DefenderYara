
rule TrojanDownloader_O97M_Adnel_O{
	meta:
		description = "TrojanDownloader:O97M/Adnel.O,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {73 65 74 56 65 63 74 6f 72 31 20 3d 20 73 65 74 56 65 63 74 6f 72 31 20 26 20 43 68 72 28 90 02 10 28 69 29 20 2d 20 90 02 04 20 2a 20 90 02 20 20 2d 20 90 02 04 20 2d 20 90 02 04 20 2d 20 90 02 04 29 90 00 } //1
		$a_03_1 = {68 6f 6d 65 62 72 65 77 20 3d 20 41 72 72 61 79 28 90 01 04 2c 20 90 01 04 2c 20 90 01 04 2c 20 90 01 04 2c 90 00 } //1
		$a_03_2 = {2e 4f 70 65 6e 20 55 43 61 73 65 28 90 02 10 29 2c 20 90 02 10 28 68 6f 6d 65 62 72 65 77 2c 20 90 02 04 29 2c 20 46 61 6c 73 65 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}