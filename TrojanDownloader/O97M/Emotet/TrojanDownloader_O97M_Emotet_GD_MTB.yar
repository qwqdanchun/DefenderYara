
rule TrojanDownloader_O97M_Emotet_GD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.GD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,15 00 15 00 08 00 00 "
		
	strings :
		$a_02_0 = {52 00 65 00 70 00 6c 00 61 00 63 00 65 00 28 00 90 02 0f 2c 00 20 00 90 02 0f 2c 00 20 00 22 00 22 00 29 00 90 00 } //10
		$a_02_1 = {52 65 70 6c 61 63 65 28 90 02 0f 2c 20 90 02 0f 2c 20 22 22 29 90 00 } //10
		$a_02_2 = {2e 00 43 00 72 00 65 00 61 00 74 00 65 00 28 00 90 02 1e 2c 00 20 00 90 02 1e 2c 00 20 00 90 02 1e 2c 00 20 00 90 02 1e 29 00 90 00 } //10
		$a_02_3 = {2e 43 72 65 61 74 65 28 90 02 1e 2c 20 90 02 1e 2c 20 90 02 1e 2c 20 90 02 1e 29 90 00 } //10
		$a_02_4 = {2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 2b 00 20 00 90 02 14 2e 00 90 02 14 2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 90 00 } //1
		$a_02_5 = {2e 43 61 70 74 69 6f 6e 20 2b 20 90 02 14 2e 90 02 14 2e 43 61 70 74 69 6f 6e 90 00 } //1
		$a_02_6 = {3d 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 90 02 1e 28 00 90 02 64 29 00 29 00 29 00 90 00 } //1
		$a_02_7 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 1e 28 90 02 64 29 29 29 90 00 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1) >=21
 
}