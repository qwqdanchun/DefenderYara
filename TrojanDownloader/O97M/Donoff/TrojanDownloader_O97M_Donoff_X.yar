
rule TrojanDownloader_O97M_Donoff_X{
	meta:
		description = "TrojanDownloader:O97M/Donoff.X,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {3d 20 52 6f 75 6e 64 28 90 02 0a 20 2a 20 43 68 72 28 90 02 0a 29 29 90 00 } //1
		$a_03_1 = {52 6f 75 6e 64 28 90 02 0a 20 2b 20 54 61 6e 28 90 02 0a 20 2b 20 4c 6f 67 28 90 02 0a 29 20 2d 20 90 02 0a 20 2f 20 48 65 78 28 90 02 0a 29 29 29 90 00 } //1
		$a_03_2 = {3d 20 41 72 72 61 79 28 90 02 0a 2c 20 90 02 0a 2c 20 90 02 0a 2c 20 49 6e 74 65 72 61 63 74 69 6f 6e 2e 53 68 65 6c 6c 28 90 02 0a 2e 54 65 78 74 42 6f 78 31 2c 20 90 02 02 20 2d 20 90 02 02 29 2c 20 90 02 0a 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Donoff_X_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.X,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_02_0 = {70 61 74 68 20 3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 5f 0d 0a 90 05 20 06 61 2d 7a 30 2d 39 28 20 5f 90 00 } //1
		$a_02_1 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 28 70 61 74 68 29 90 02 20 2e 43 6c 6f 73 65 90 02 05 45 6e 64 20 49 66 90 02 05 53 68 65 6c 6c 20 70 61 74 68 2c 90 02 05 30 0d 0a 45 6e 64 20 53 75 62 90 00 } //1
		$a_02_2 = {20 26 20 4d 69 64 28 90 02 20 2c 20 90 05 20 06 61 2d 7a 30 2d 39 20 2b 20 31 2c 20 31 29 20 26 20 4d 69 64 28 90 05 20 06 61 2d 7a 30 2d 39 2c 20 90 05 20 06 61 2d 7a 30 2d 39 2c 20 31 29 90 02 05 4e 65 78 74 90 00 } //1
		$a_02_3 = {70 61 74 68 20 3d 20 5f 0d 0a 45 6e 76 69 72 6f 6e 28 20 5f 0d 0a 90 05 20 06 61 2d 7a 30 2d 39 28 20 5f 0d 0a 90 05 20 06 61 2d 7a 30 2d 39 29 29 20 26 20 90 05 20 06 61 2d 7a 30 2d 39 28 20 5f 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=3
 
}