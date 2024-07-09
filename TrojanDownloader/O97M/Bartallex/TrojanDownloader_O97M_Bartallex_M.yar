
rule TrojanDownloader_O97M_Bartallex_M{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.M,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 5f 0d 0a 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 28 20 5f 0d 0a 42 79 56 61 6c } //1
		$a_03_1 = {3d 20 30 20 54 68 65 6e 20 [0-14] 20 3d 20 5f 0d 0a 54 72 75 65 0d 0a 44 69 6d 20 5f 0d 0a [0-20] 3a 20 [0-20] 20 3d 20 53 68 65 6c 6c 28 [0-0f] 2c 20 5f 0d 0a 31 29 } //1
		$a_03_2 = {3d 20 30 0d 0a 46 6f 72 20 [0-14] 20 3d 20 5f 0d 0a 31 20 54 6f 20 4c 65 6e 28 [0-0f] 29 0d 0a [0-20] 20 3d 20 5f 0d 0a 4d 69 64 28 20 5f 0d 0a [0-0f] 2c 20 [0-14] 2c 20 5f 0d 0a 31 29 } //1
		$a_03_3 = {3e 20 28 26 48 ?? ?? ?? ?? 20 2d 20 5f 0d 0a ?? ?? ?? ?? ?? 29 20 54 68 65 6e 20 [0-0f] 20 3d 20 5f 0d 0a [0-0f] 20 2d 20 28 26 48 ?? ?? ?? ?? 20 2d 20 ?? ?? ?? ?? ?? 29 0d 0a [0-20] 20 3d 20 5f 0d 0a 43 68 72 28 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}