
rule TrojanDownloader_O97M_EncDoc_RVN_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RVN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 74 72 52 65 76 65 72 73 65 28 22 74 78 74 2e 63 6e 45 2f 90 01 02 2f 35 34 2e 31 30 31 2e 32 33 31 2e 38 33 2f 2f 3a 70 74 74 68 22 29 90 00 } //01 00 
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 01 16 20 26 20 90 01 16 2c 20 4e 75 6c 6c 90 00 } //01 00 
		$a_01_2 = {57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //00 00  Workbook_Open()
	condition:
		any of ($a_*)
 
}