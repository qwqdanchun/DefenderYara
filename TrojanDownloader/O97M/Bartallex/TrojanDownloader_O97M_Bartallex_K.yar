
rule TrojanDownloader_O97M_Bartallex_K{
	meta:
		description = "TrojanDownloader:O97M/Bartallex.K,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {43 6f 6e 73 74 20 4f 30 30 31 31 31 31 31 31 30 31 30 30 30 31 30 30 30 31 30 30 31 30 30 30 30 30 31 30 30 30 20 3d 20 22 62 2d 56 44 3d 4b 49 ef bf bd 79 60 2d 4f 2e 2a 32 34 70 34 4b 22 0d 0a 50 75 62 6c 69 63 20 4f 30 31 31 31 30 31 30 31 30 30 31 31 31 31 30 30 31 30 30 31 31 31 31 31 31 31 31 30 31 31 20 41 73 20 53 74 72 69 6e 67 0d 0a 23 49 66 20 57 69 6e 36 34 20 54 68 65 6e 0d 0a 50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 5f 0d 0a 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 28 42 79 56 61 6c 20 4f 30 30 31 31 31 31 31 31 31 30 31 31 31 30 30 31 30 31 30 30 31 30 31 30 31 31 31 30 31 30 20 41 73 20 4c 6f 6e 67 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}