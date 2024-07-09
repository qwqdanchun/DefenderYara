
rule TrojanDownloader_O97M_Emotet_QE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.QE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6d 67 6d 74 [0-15] 69 [0-15] 3a [0-15] 57 [0-15] 69 [0-15] 6e [0-15] 33 [0-15] 32 [0-15] 50 [0-15] 72 [0-15] 6f [0-15] 63 [0-15] 65 [0-15] 73 [0-15] 73 [0-15] 22 29 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 28 [0-25] 20 2b 20 [0-25] 2c 20 [0-25] 2c 20 [0-25] 2c 20 [0-25] 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}