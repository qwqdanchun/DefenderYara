
rule TrojanDownloader_O97M_EncDoc_EGPK_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.EGPK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 22 26 22 74 70 3a 2f 22 26 22 2f 68 22 26 22 75 6c 22 26 22 6c 73 22 26 22 69 74 22 26 22 65 2e 63 22 26 22 6f 22 26 22 6d 2f 30 22 26 22 61 36 22 26 22 31 2f 6e 22 26 22 6d 36 22 26 22 6c 78 22 26 22 6f 63 22 26 22 71 74 2f } //01 00 
		$a_01_1 = {74 22 26 22 74 70 22 26 22 73 3a 2f 2f 70 22 26 22 70 69 22 26 22 61 62 22 26 22 61 6e 22 26 22 79 75 22 26 22 77 61 22 26 22 6e 67 22 26 22 69 2e 6f 22 26 22 72 2e 69 22 26 22 64 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 33 53 22 26 22 65 37 22 26 22 67 69 22 26 22 4e 58 22 26 22 74 37 22 26 22 5a 43 22 26 22 48 47 2f } //01 00 
		$a_01_2 = {74 22 26 22 74 22 26 22 70 3a 2f 2f 61 22 26 22 6e 61 22 26 22 74 2d 62 22 26 22 61 22 26 22 72 2e 63 22 26 22 6f 2e 69 22 26 22 6c 2f 77 22 26 22 70 2d 61 22 26 22 64 6d 22 26 22 69 6e 2f 6b 22 26 22 5a 61 22 26 22 72 72 22 26 22 6a 4a 22 26 22 4e 31 22 26 22 34 38 22 26 22 6f 6e 22 26 22 52 6e 22 26 22 52 69 2f } //01 00 
		$a_01_3 = {74 22 26 22 74 70 22 26 22 73 3a 2f 22 26 22 2f 62 65 22 26 22 6e 63 22 26 22 65 76 22 26 22 65 6e 22 26 22 64 65 22 26 22 67 68 22 26 22 61 7a 2e 68 22 26 22 75 2f 77 22 26 22 70 2d 69 6e 22 26 22 63 6c 22 26 22 75 64 22 26 22 65 73 2f 63 22 26 22 4c 72 22 26 22 71 42 22 26 22 49 77 22 26 22 66 38 22 26 22 43 2f } //01 00 
		$a_01_4 = {74 22 26 22 74 22 26 22 70 3a 2f 2f 33 22 26 22 64 73 22 26 22 74 75 22 26 22 64 69 22 26 22 6f 61 2e 63 22 26 22 6f 22 26 22 6d 2e 62 22 26 22 72 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 6e 2f 79 22 26 22 57 70 22 26 22 6f 6e 22 26 22 31 4e 22 26 22 64 30 22 26 22 33 6c 2f } //01 00 
		$a_01_5 = {74 74 22 26 22 70 3a 2f 2f 63 22 26 22 6c 61 75 22 26 22 64 69 6f 22 26 22 61 76 65 22 26 22 6c 61 72 2e 61 22 26 22 64 22 26 22 76 2e 62 22 26 22 72 2f 52 22 26 22 65 76 22 26 22 69 73 22 26 22 74 61 2f 4a 6c 6a 22 26 22 61 68 53 22 26 22 52 32 22 26 22 36 69 22 26 22 35 6b 2f } //00 00 
	condition:
		any of ($a_*)
 
}