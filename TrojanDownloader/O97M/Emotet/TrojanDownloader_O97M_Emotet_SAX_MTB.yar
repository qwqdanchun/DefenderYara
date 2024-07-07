
rule TrojanDownloader_O97M_Emotet_SAX_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SAX!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {4e 65 78 74 90 02 25 3a 90 02 25 20 3d 20 22 90 02 25 22 90 02 25 20 3d 20 22 90 02 20 72 6f 90 02 20 63 65 90 02 20 73 90 02 20 73 90 02 20 22 90 00 } //1
		$a_03_1 = {4e 65 78 74 90 02 25 3a 90 02 25 20 3d 20 22 90 02 20 3a 77 90 02 20 69 6e 90 02 20 33 90 02 20 32 90 02 20 5f 90 02 20 22 90 00 } //1
		$a_03_2 = {4e 65 78 74 90 02 25 3a 90 02 25 20 3d 20 22 77 90 02 20 69 6e 90 02 20 6d 90 02 20 67 6d 90 02 20 74 90 02 20 22 90 00 } //1
		$a_03_3 = {20 3d 20 52 65 70 6c 61 63 65 28 90 02 25 2c 20 22 90 02 25 22 2c 20 90 02 25 29 90 00 } //1
		$a_03_4 = {2e 43 72 65 61 74 65 20 90 02 20 2c 20 90 02 20 2c 90 00 } //1
		$a_03_5 = {45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 90 02 20 28 90 02 20 29 90 0c 02 00 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}