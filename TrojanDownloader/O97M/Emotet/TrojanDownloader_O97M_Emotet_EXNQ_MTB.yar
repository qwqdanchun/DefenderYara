
rule TrojanDownloader_O97M_Emotet_EXNQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.EXNQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 6d 64 20 2f 63 20 6d 73 5e 68 5e 74 61 20 68 74 5e 74 70 3a 2f 5e 2f 30 78 5e 62 5e 39 30 37 64 36 30 5e 37 2f 66 65 5e 72 2f 90 02 08 2e 68 5e 74 6d 5e 6c 90 00 } //01 00 
		$a_03_1 = {3a 2f 5e 2f 30 78 5e 62 5e 39 30 37 64 36 30 5e 37 2f 66 65 5e 72 2f 66 90 02 04 2e 68 74 6d 6c 90 00 } //01 00 
		$a_03_2 = {3a 2f 5e 2f 30 78 5e 62 5e 39 30 37 64 36 30 5e 37 2f 66 65 5e 72 2f 90 02 06 2e 68 5e 74 6d 5e 6c 90 00 } //01 00 
		$a_03_3 = {3a 2f 5e 2f 30 78 35 63 66 66 33 39 63 33 2f 73 65 63 2f 73 90 02 04 2e 68 74 6d 6c 90 00 } //01 00 
		$a_03_4 = {3a 2f 5e 2f 30 78 5e 35 63 66 5e 66 5e 33 39 63 5e 33 5e 2f 5e 73 65 63 5e 2f 5e 73 90 02 04 2e 68 74 6d 6c 90 00 } //01 00 
		$a_03_5 = {39 31 2e 32 34 30 2e 31 31 38 2e 31 36 38 2f 71 77 2f 61 73 2f 73 90 02 04 2e 68 74 6d 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}