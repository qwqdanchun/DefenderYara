
rule TrojanDownloader_O97M_Emotet_RQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 [0-01] 28 [0-40] 2c 20 [0-20] 2c 20 [0-20] 2c 20 [0-20] 29 } //1
		$a_03_1 = {52 65 70 6c 61 63 65 [0-05] 28 [0-16] 2c 20 [0-16] 2c 20 [0-16] 29 } //1
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-20] 28 [0-20] 2e [0-70] 29 29 } //1
		$a_03_3 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 [0-02] 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 } //1
		$a_03_4 = {44 69 6d 20 [0-20] 52 65 44 69 6d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}