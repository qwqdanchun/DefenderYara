
rule TrojanDownloader_O97M_Emotet_QS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.QS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 28 [0-35] 2c 20 [0-25] 2c 20 [0-25] 2c 20 [0-25] 29 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-15] 28 [0-15] 2e [0-15] 29 29 } //1
		$a_03_2 = {52 65 70 6c 61 63 65 28 [0-15] 2c 20 [0-15] 2c 20 22 22 29 20 26 20 52 65 70 6c 61 63 65 28 [0-15] 2c 20 [0-15] 2c 20 22 22 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}