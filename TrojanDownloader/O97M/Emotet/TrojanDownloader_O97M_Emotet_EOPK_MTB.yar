
rule TrojanDownloader_O97M_Emotet_EOPK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.EOPK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 22 26 22 74 70 3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 69 73 22 26 22 6d 61 22 26 22 72 74 22 26 22 74 65 22 26 22 63 68 22 26 22 6e 6f 22 26 22 6c 6f 22 26 22 67 69 22 26 22 65 73 2e 63 22 26 22 6f 22 26 22 6d 2f 62 22 26 22 6c 6f 22 26 22 67 73 2f 4c 22 26 22 6a 43 22 26 22 54 49 22 26 22 74 4c 22 26 22 74 48 22 26 22 47 42 22 26 22 4d 34 22 26 22 53 33 2f } //01 00 
		$a_01_1 = {74 22 26 22 74 22 26 22 70 3a 2f 22 26 22 2f 61 6e 22 26 22 67 75 22 26 22 69 61 22 26 22 6e 6f 22 26 22 73 73 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 62 22 26 22 4c 4d 22 26 22 48 39 22 26 22 51 33 22 26 22 62 47 2f } //00 00 
	condition:
		any of ($a_*)
 
}