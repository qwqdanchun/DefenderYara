
rule TrojanDownloader_O97M_Emotet_PL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.PL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {32 5f 50 70 90 02 20 72 90 02 20 6f 90 02 20 63 90 02 20 65 90 02 20 73 90 02 20 73 90 02 20 22 90 00 } //01 00 
		$a_03_1 = {2e 43 72 65 61 74 65 28 90 02 25 2c 20 90 02 25 2c 20 90 02 25 2c 20 90 02 25 29 90 00 } //01 00 
		$a_03_2 = {2e 43 61 70 74 69 6f 6e 20 2b 20 90 02 20 2e 90 02 25 2e 43 61 70 74 69 6f 6e 29 29 90 00 } //01 00 
		$a_03_3 = {2b 20 52 65 70 6c 61 63 65 28 90 02 20 2c 20 22 90 02 10 22 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}