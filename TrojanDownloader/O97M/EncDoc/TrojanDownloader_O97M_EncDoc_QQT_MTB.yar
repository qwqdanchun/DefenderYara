
rule TrojanDownloader_O97M_EncDoc_QQT_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.QQT!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2f 64 73 2f 30 32 31 32 32 30 2e 67 69 66 } //01 00 
		$a_01_1 = {43 3a 5c 67 6e 62 66 74 5c } //01 00 
		$a_01_2 = {63 68 74 66 6a 2e 64 6c 6c } //01 00 
		$a_01_3 = {4a 4a 43 43 4a 4a } //00 00 
	condition:
		any of ($a_*)
 
}