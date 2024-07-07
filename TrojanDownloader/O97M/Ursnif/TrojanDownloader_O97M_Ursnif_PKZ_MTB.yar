
rule TrojanDownloader_O97M_Ursnif_PKZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.PKZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {26 20 22 5c 22 20 26 20 49 6e 74 28 90 02 0f 20 2a 20 52 6e 64 29 20 2b 20 90 02 0f 20 26 20 22 2e 22 90 00 } //1
		$a_03_1 = {44 65 63 6f 64 65 42 61 73 65 36 34 28 28 90 02 0f 28 90 02 0f 28 22 31 31 35 3b 36 68 2d 74 32 30 74 20 32 70 36 73 20 3a 31 22 29 20 26 20 22 3a 2f 2f 22 20 26 20 90 02 0f 28 22 63 68 65 63 68 6f 61 22 29 20 26 20 22 2e 22 20 26 20 90 02 0f 28 22 2f 2d 63 31 32 6f 2d 33 6d 33 22 29 29 29 29 2c 90 00 } //1
		$a_03_2 = {4c 65 66 74 28 45 6e 76 69 72 6f 6e 28 90 02 0f 28 22 2d 33 38 63 2d 6f 30 6d 20 3b 73 37 70 31 30 31 65 63 33 22 29 29 2c 20 32 30 29 20 26 20 90 02 0f 28 22 31 31 72 33 2d 65 38 20 30 67 2c 73 37 3b 31 30 76 20 38 72 31 22 29 20 26 20 22 33 32 2e 22 20 26 20 90 02 0f 28 22 31 65 20 37 2d 78 3b 65 31 2d 22 29 29 90 00 } //1
		$a_03_3 = {30 5c 39 63 36 61 6c 39 63 37 22 29 20 26 20 22 2e 22 20 26 20 90 02 0f 28 22 2d 39 65 37 2d 78 35 65 2d 22 29 90 00 } //1
		$a_03_4 = {44 65 62 75 67 2e 50 72 69 6e 74 20 90 02 0f 28 90 02 0f 2c 20 90 02 0f 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}