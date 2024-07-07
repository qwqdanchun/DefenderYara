
rule TrojanDownloader_O97M_Donoff_AK{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AK,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_02_0 = {3d 20 45 6e 76 69 72 6f 6e 28 90 05 20 06 61 2d 7a 30 2d 39 28 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 20 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 20 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 90 00 } //1
		$a_02_1 = {2e 4f 70 65 6e 20 90 05 20 06 61 2d 7a 30 2d 39 28 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 20 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 20 43 68 72 28 90 05 04 03 30 2d 39 29 90 00 } //1
		$a_02_2 = {53 74 72 43 6f 6e 76 28 90 05 20 06 61 2d 7a 30 2d 39 2e 72 65 73 50 6f 6e 73 65 62 6f 64 59 2c 20 76 62 55 6e 69 63 6f 64 65 29 2c 20 90 05 20 06 61 2d 7a 30 2d 39 28 43 68 72 28 90 00 } //1
		$a_02_3 = {22 29 29 2e 52 75 6e 20 22 22 22 22 20 26 20 90 05 20 06 61 2d 7a 30 2d 39 20 26 20 22 22 22 22 90 00 } //1
		$a_02_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 05 20 06 61 2d 7a 30 2d 39 28 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 20 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 20 43 68 72 28 90 05 04 03 30 2d 39 29 20 2b 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=3
 
}