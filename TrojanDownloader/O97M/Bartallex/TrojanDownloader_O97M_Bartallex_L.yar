
rule TrojanDownloader_O97M_Bartallex_L{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.L,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 43 75 73 74 6f 6d 69 7a 61 62 6c 65 20 3d 20 54 72 75 65 0d 0a 50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 5f 0d 0a 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 20 5f 0d 0a 4c 69 62 20 22 75 72 6c 6d 6f 6e 2e 64 6c 6c 22 20 28 42 79 56 61 6c 20 5f } //01 00 
		$a_01_1 = {50 72 69 76 61 74 65 20 5f 0d 0a 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 53 68 65 6c 6c 45 78 65 63 75 74 65 57 20 5f 0d 0a 4c 69 62 20 22 73 68 65 6c 6c 33 32 2e 64 6c 6c 22 20 28 42 79 56 61 6c 20 5f } //01 00 
		$a_01_2 = {3d 20 22 68 74 7c 7c 7c 7c 74 70 3a 2f } //01 00  = "ht||||tp:/
		$a_01_3 = {28 22 7c 7c 74 7c 7c 7c 7c 7c 6d 7c 7c 7c 7c 7c 7c 70 } //00 00  ("||t|||||m||||||p
	condition:
		any of ($a_*)
 
}