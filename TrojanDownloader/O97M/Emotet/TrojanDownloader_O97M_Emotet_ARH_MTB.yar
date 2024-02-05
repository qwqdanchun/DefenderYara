
rule TrojanDownloader_O97M_Emotet_ARH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.ARH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 22 26 22 6c 61 22 26 22 72 65 22 26 22 63 6f 2e 6e 22 26 22 65 22 26 22 74 2f 61 73 22 26 22 73 65 22 26 22 74 73 2f 62 22 26 22 65 73 22 26 22 74 2d 67 22 26 22 61 6d 22 26 22 65 2e 6a 22 26 22 70 22 26 22 67 2f 4c 4c 22 26 22 36 47 22 26 22 78 53 22 26 22 32 59 22 26 22 63 46 22 26 22 73 37 22 26 22 74 70 22 26 22 50 4c 2f 6a } //01 00 
		$a_01_1 = {65 72 22 26 22 6b 61 22 26 22 72 61 22 26 22 64 79 22 26 22 61 74 22 26 22 6f 72 2e 63 22 26 22 6f 6d 2e 74 22 26 22 72 2f 41 22 26 22 72 65 22 26 22 61 73 2f 77 22 26 22 69 6c 22 26 22 63 43 22 26 22 71 53 22 26 22 45 73 22 26 22 36 63 22 26 22 45 4d 22 26 22 33 44 2f 77 } //01 00 
		$a_01_2 = {65 74 73 22 26 22 76 65 22 26 22 72 73 22 26 22 61 69 22 26 22 6c 6c 22 26 22 65 73 2e 6e 22 26 22 65 22 26 22 74 2f 77 22 26 22 65 62 22 26 22 72 6f 22 26 22 6f 74 2f 5a 22 26 22 45 75 22 26 22 72 42 22 26 22 73 43 22 26 22 32 48 22 26 22 33 73 22 26 22 6f 65 22 26 22 69 46 22 26 22 62 79 22 26 22 65 51 } //01 00 
		$a_01_3 = {74 65 22 26 22 61 6d 22 26 22 64 72 22 26 22 69 76 22 26 22 65 72 22 26 22 73 6f 22 26 22 6e 6c 22 26 22 79 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 61 64 22 26 22 6d 69 22 26 22 6e 2f 65 22 26 22 46 37 22 26 22 41 4a 2f 6b } //01 00 
		$a_01_4 = {68 22 26 22 72 2e 64 22 26 22 65 76 22 26 22 73 72 22 26 22 6d 2e 63 22 26 22 6f 22 26 22 6d 2f 77 22 26 22 70 2d 63 22 26 22 6f 6e 22 26 22 74 65 22 26 22 6e 74 2f 4a 22 26 22 6b 36 22 26 22 67 4f 22 26 22 63 51 22 26 22 4f 70 22 26 22 52 57 22 26 22 47 77 22 26 22 4c 2f } //01 00 
		$a_01_5 = {67 6c 22 26 22 6f 62 22 26 22 6f 61 22 26 22 67 72 22 26 22 6f 6e 22 26 22 65 67 22 26 22 6f 63 22 26 22 69 6f 22 26 22 73 2e 63 22 26 22 6f 22 26 22 6d 2e 62 22 26 22 72 2f 73 22 26 22 74 79 22 26 22 6c 65 2f 4b 22 26 22 45 4a 22 26 22 51 57 22 26 22 58 66 22 26 22 32 62 22 26 22 39 74 22 26 22 68 73 22 26 22 6b 63 22 26 22 35 63 22 26 22 56 2f } //00 00 
	condition:
		any of ($a_*)
 
}