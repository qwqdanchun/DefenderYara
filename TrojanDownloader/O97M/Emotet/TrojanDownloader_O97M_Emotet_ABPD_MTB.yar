
rule TrojanDownloader_O97M_Emotet_ABPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ABPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 77 22 26 22 77 22 26 22 77 2e 6d 61 22 26 22 6c 61 22 26 22 6d 75 22 26 22 72 74 22 26 22 68 79 22 26 22 63 61 22 26 22 74 65 22 26 22 72 69 22 26 22 6e 67 2e 63 22 26 22 6f 22 26 22 6d 2f 66 6f 22 26 22 6e 74 2f 73 22 26 22 72 31 22 26 22 39 4d 22 26 22 66 65 22 26 22 77 50 22 26 22 55 70 22 26 22 6b 6c 22 26 22 66 56 22 26 22 6f 2f } //01 00 
		$a_01_1 = {3a 2f 2f 6d 22 26 22 6f 72 22 26 22 65 69 22 26 22 72 61 22 26 22 63 61 22 26 22 73 74 22 26 22 72 6f 2e 63 22 26 22 6f 22 26 22 6d 2f 45 22 26 22 73 70 22 26 22 65 63 69 22 26 22 61 6c 22 26 22 69 64 22 26 22 61 64 22 26 22 65 73 2f 6e 22 26 22 70 58 22 26 22 5a 7a 22 26 22 34 5a 2f } //01 00 
		$a_01_2 = {3a 2f 2f 6d 22 26 22 72 73 22 26 22 67 69 22 26 22 67 67 22 26 22 6c 65 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 69 6e 22 26 22 63 6c 22 26 22 75 64 22 26 22 65 73 2f 7a 22 26 22 42 32 22 26 22 39 6c 22 26 22 33 6c 22 26 22 67 52 2f } //01 00 
		$a_01_3 = {3a 2f 2f 6d 22 26 22 6f 72 22 26 22 65 6c 6c 22 26 22 61 68 22 26 22 61 69 22 26 22 72 2e 63 22 26 22 6f 22 26 22 6d 2f 50 22 26 22 48 50 22 26 22 4d 61 22 26 22 69 6c 65 22 26 22 72 2f 36 22 26 22 30 2f } //01 00 
		$a_01_4 = {3a 2f 2f 6d 22 26 22 6f 72 22 26 22 74 73 74 22 26 22 65 72 2e 6e 22 26 22 65 74 2f 69 22 26 22 6d 61 22 26 22 67 65 22 26 22 73 2f 66 22 26 22 68 75 22 26 22 47 39 22 26 22 55 47 22 26 22 56 42 22 26 22 78 2f } //01 00 
		$a_01_5 = {3a 2f 2f 6f 22 26 22 63 63 32 22 26 22 2e 69 76 61 22 26 22 6f 2e 61 22 26 22 65 72 22 26 22 6f 2f 69 22 26 22 6e 22 26 22 74 2f 54 59 52 22 26 22 65 6c 33 22 26 22 69 44 36 22 26 22 7a 42 22 26 22 4c 64 63 22 26 22 65 48 22 26 22 41 75 2f } //00 00 
	condition:
		any of ($a_*)
 
}