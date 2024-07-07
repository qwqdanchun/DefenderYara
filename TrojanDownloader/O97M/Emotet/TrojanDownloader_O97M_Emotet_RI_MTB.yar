
rule TrojanDownloader_O97M_Emotet_RI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {29 20 3d 20 90 02 15 28 90 02 15 2e 90 02 15 20 2b 20 90 02 15 2e 90 02 15 20 2b 20 90 02 15 2e 90 02 15 29 90 00 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 02 40 2c 20 90 02 20 2c 20 90 02 20 2c 20 90 02 20 29 90 00 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 90 02 20 2e 90 02 55 29 29 90 00 } //1
		$a_03_3 = {52 65 70 6c 61 63 65 90 02 01 28 90 02 15 2c 20 90 02 15 2e 90 00 } //1
		$a_03_4 = {4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 02 95 44 69 6d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}