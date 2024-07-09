
rule TrojanDownloader_O97M_Emotet_QG_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.QG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {57 69 6e 33 [0-15] 32 [0-15] 50 [0-15] 72 [0-15] 6f [0-15] 63 [0-15] 65 [0-15] 73 [0-15] 73 [0-15] 22 29 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 28 [0-25] 20 2b 20 [0-25] 2c 20 [0-25] 2c 20 [0-25] 2c 20 [0-25] 29 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-15] 28 [0-15] 20 2b 20 [0-15] 28 [0-02] 29 29 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}