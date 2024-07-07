
rule TrojanDownloader_O97M_Emotet_RE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 28 28 90 02 25 28 90 02 25 29 29 2c 20 90 02 25 2c 20 90 02 25 2c 20 90 02 25 29 90 00 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 20 28 90 02 20 2e 90 02 45 29 29 90 00 } //1
		$a_03_2 = {52 65 70 6c 61 63 65 90 02 01 28 90 02 15 2c 20 90 02 18 2e 90 02 15 2c 20 22 22 29 90 00 } //1
		$a_03_3 = {4d 73 67 42 6f 78 20 22 90 02 50 22 2c 20 22 31 36 22 2c 20 90 02 15 2e 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}