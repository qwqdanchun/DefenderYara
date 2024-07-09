
rule TrojanDownloader_O97M_Donoff_AP{
	meta:
		description = "TrojanDownloader:O97M/Donoff.AP,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {20 3d 20 53 74 72 43 6f 6e 76 28 90 1d 10 00 2c 20 28 36 34 20 2b 20 90 10 02 00 20 2b 20 36 34 20 2d 20 90 1b 01 29 29 0d 0a } //1
		$a_03_1 = {20 3d 20 46 61 6c 73 65 20 54 68 65 6e 20 90 1d 18 00 20 3d 20 30 3a 20 90 1d 18 00 20 3d 20 4e 6f 74 20 28 90 1b 01 29 0d 0a 49 66 20 90 1b 00 20 3e 20 28 31 34 32 2e 35 20 2b 20 90 10 02 00 20 2b 20 31 34 32 2e 35 20 2d 20 90 1b 04 29 20 41 6e 64 20 90 1b 01 20 3d 20 54 72 75 65 20 54 68 65 6e 20 90 1b 00 20 3d 20 28 32 2e 35 20 2b 20 90 10 02 00 20 2b 20 32 2e 35 20 2d 20 90 1b 08 29 3a 20 90 1b 01 20 3d 20 4e 6f 74 20 28 90 1b 01 29 0d 0a 90 1d 18 00 28 90 1d 18 00 29 20 3d 20 28 90 1b 0c 28 90 1b 0d 29 20 58 6f 72 20 28 90 1d 18 00 28 90 1b 00 29 20 58 6f 72 20 90 1d 18 00 28 90 1d 18 00 29 29 29 } //1
		$a_03_2 = {4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 0d 0a 90 1d 18 00 20 3d 20 90 10 03 00 0d 0a 44 69 6d 20 90 1d 18 00 20 41 73 20 53 74 72 69 6e 67 2c 20 90 1d 18 00 28 29 20 41 73 20 53 74 72 69 6e 67 2c 20 90 1d 18 00 20 41 73 20 49 6e 74 65 67 65 72 0d 0a 90 1d 18 00 20 3d 20 90 10 03 00 0d 0a 90 1b 02 20 3d 20 90 1b 02 20 26 20 22 90 04 40 04 30 2d 39 2c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}