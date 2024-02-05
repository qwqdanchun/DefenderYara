
rule TrojanDownloader_O97M_Emotet_RPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.RPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3a 2f 22 26 22 2f 64 22 26 22 6d 22 26 22 63 22 26 22 6f 22 26 22 6e 22 26 22 74 22 26 22 61 22 26 22 62 22 26 22 69 22 26 22 6c 22 26 22 69 22 26 22 64 22 26 22 61 22 26 22 64 22 26 22 65 2e 63 22 26 22 6f 22 26 22 6d 2f 63 22 26 22 6f 22 26 22 72 22 26 22 72 22 26 22 65 22 26 22 73 22 26 22 70 22 26 22 6f 22 26 22 6e 22 26 22 64 22 26 22 65 22 26 22 6e 22 26 22 74 22 26 22 65 22 26 22 63 22 26 22 61 22 26 22 69 22 26 22 78 22 26 22 61 2f 54 22 26 22 72 22 26 22 53 2f } //01 00 
		$a_01_1 = {3a 2f 22 26 22 2f 66 63 22 26 22 65 6c 22 26 22 69 6b 2e 6e 22 26 22 6c 2f 72 69 22 26 22 74 74 22 26 22 65 22 26 22 6e 22 26 22 72 22 26 22 65 22 26 22 67 22 26 22 69 22 26 22 73 22 26 22 74 22 26 22 72 22 26 22 61 22 26 22 74 22 26 22 69 22 26 22 65 2f 77 22 26 22 65 22 26 22 62 2f 63 22 26 22 73 22 26 22 73 2f 42 22 26 22 33 49 22 26 22 4c 22 26 22 66 22 26 22 55 22 26 22 38 22 26 22 58 22 26 22 6b 22 26 22 32 22 26 22 53 22 26 22 73 22 26 22 45 22 26 22 6d 22 26 22 54 2f } //01 00 
		$a_01_2 = {3a 2f 22 26 22 2f 77 22 26 22 77 22 26 22 77 2e 67 22 26 22 65 22 26 22 73 22 26 22 73 22 26 22 65 22 26 22 72 22 26 22 73 22 26 22 68 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 69 22 26 22 6e 22 26 22 63 6c 22 26 22 75 22 26 22 64 22 26 22 65 22 26 22 73 2f 5a 22 26 22 77 22 26 22 51 22 26 22 4c 22 26 22 65 22 26 22 70 22 26 22 57 2f } //01 00 
		$a_01_3 = {3a 2f 22 26 22 2f 77 22 26 22 77 22 26 22 77 2e 66 22 26 22 61 22 26 22 6e 22 26 22 74 22 26 22 61 73 22 26 22 74 22 26 22 69 22 26 22 63 22 26 22 6d 22 26 22 6f 22 26 22 74 22 26 22 69 22 26 22 6f 22 26 22 6e 2e 6a 22 26 22 70 2f 5f 63 22 26 22 6e 22 26 22 73 22 26 22 6b 22 26 22 69 22 26 22 6e 2f 71 22 26 22 66 22 26 22 57 22 26 22 45 22 26 22 51 22 26 22 72 22 26 22 72 22 26 22 77 22 26 22 42 22 26 22 67 2f } //01 00 
		$a_01_4 = {3a 2f 22 26 22 2f 66 22 26 22 61 22 26 22 6e 22 26 22 66 22 26 22 69 22 26 22 65 22 26 22 6c 22 26 22 64 2e 63 22 26 22 6f 2e 75 22 26 22 6b 2f 63 22 26 22 67 22 26 22 69 2d 62 22 26 22 69 22 26 22 6e 2f 37 70 22 26 22 70 22 26 22 36 22 26 22 44 22 26 22 6a 22 26 22 57 22 26 22 46 22 26 22 4e 22 26 22 4a 22 26 22 58 22 26 22 59 22 26 22 38 2f } //01 00 
		$a_01_5 = {3a 2f 22 26 22 2f 77 22 26 22 77 22 26 22 77 2e 67 22 26 22 61 22 26 22 72 22 26 22 61 22 26 22 6e 22 26 22 74 22 26 22 69 22 26 22 68 22 26 22 61 22 26 22 6c 22 26 22 69 22 26 22 79 22 26 22 69 22 26 22 6b 22 26 22 61 22 26 22 6d 22 26 22 61 2e 63 22 26 22 6f 22 26 22 6d 22 26 22 2f 77 22 26 22 70 2d 61 22 26 22 64 22 26 22 6d 22 26 22 69 22 26 22 6e 2f 46 22 26 22 6a 22 26 22 67 22 26 22 42 22 26 22 36 22 26 22 49 2f } //00 00 
	condition:
		any of ($a_*)
 
}