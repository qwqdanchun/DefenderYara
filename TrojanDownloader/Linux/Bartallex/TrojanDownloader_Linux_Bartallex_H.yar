
rule TrojanDownloader_Linux_Bartallex_H{
	meta:
		description = "TrojanDownloader:Linux/Bartallex.H,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 3a 2f 2f 70 61 73 22 } //01 00  = "://pas"
		$a_01_1 = {3d 20 22 74 74 70 22 } //01 00  = "ttp"
		$a_01_2 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 43 68 72 57 24 28 36 31 29 20 26 20 43 68 72 57 24 28 31 30 35 29 20 26 20 43 68 72 57 24 28 36 33 29 } //01 00  = StrReverse(ChrW$(61) & ChrW$(105) & ChrW$(63)
		$a_01_3 = {2e 4f 70 65 6e 28 53 74 72 52 65 76 65 72 73 65 28 43 68 72 57 24 28 38 34 29 20 26 20 43 68 72 57 24 28 38 33 29 } //01 00  .Open(StrReverse(ChrW$(84) & ChrW$(83)
		$a_03_4 = {3d 20 45 6e 76 69 72 6f 6e 28 90 02 10 29 20 26 20 53 74 72 52 65 76 65 72 73 65 28 43 68 72 57 24 28 31 31 35 29 20 26 20 43 68 72 57 24 28 39 38 29 20 26 20 43 68 72 57 24 28 31 31 38 29 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 13 
	condition:
		any of ($a_*)
 
}