
rule TrojanDownloader_O97M_Obfuse_WRV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.WRV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {3d 20 22 57 53 43 72 69 70 74 2e 73 68 65 6c 6c 22 3a 20 [0-14] 20 3d 20 30 } //1
		$a_01_1 = {3d 20 4b 5f 5f 46 67 33 28 36 39 29 20 26 20 4b 5f 5f 46 67 33 28 37 39 29 20 26 20 4b 5f 5f 46 67 33 28 31 30 32 29 20 26 20 4b 5f 5f 46 67 33 28 33 34 29 20 26 20 4b 5f 5f 46 67 33 28 34 39 29 20 26 20 4b 5f 5f 46 67 33 28 31 30 31 29 20 26 20 4b 5f 5f 46 67 33 28 33 34 29 } //1 = K__Fg3(69) & K__Fg3(79) & K__Fg3(102) & K__Fg3(34) & K__Fg3(49) & K__Fg3(101) & K__Fg3(34)
		$a_01_2 = {6f 44 6f 63 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 0d 0a 20 20 20 20 6f 44 6f 63 2e 50 72 69 6e 74 4f 75 74 } //1
		$a_01_3 = {22 68 66 67 6a 67 68 6e 67 68 20 67 66 62 64 20 62 62 76 63 76 68 66 67 20 33 34 35 34 33 35 20 6a 6d 6a 67 6a 68 64 66 20 22 } //1 "hfgjghngh gfbd bbvcvhfg 345435 jmjgjhdf "
		$a_01_4 = {4b 5f 5f 46 67 33 20 3d 20 43 68 72 28 44 44 20 2d 20 64 64 65 29 } //1 K__Fg3 = Chr(DD - dde)
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}