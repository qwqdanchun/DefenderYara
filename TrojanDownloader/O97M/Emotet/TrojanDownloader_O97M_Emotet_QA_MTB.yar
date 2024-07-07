
rule TrojanDownloader_O97M_Emotet_QA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.QA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {6e 6d 67 6b 90 02 15 6d 90 02 15 74 90 02 15 73 90 02 15 3a 90 02 15 57 90 02 15 69 90 02 15 22 90 00 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 02 25 2c 20 90 02 25 2c 20 90 02 25 2c 20 90 02 25 29 90 00 } //1
		$a_03_2 = {2e 43 61 70 74 69 6f 6e 20 2b 20 90 02 20 2e 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}