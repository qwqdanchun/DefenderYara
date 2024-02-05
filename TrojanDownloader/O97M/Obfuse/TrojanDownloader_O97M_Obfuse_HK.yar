
rule TrojanDownloader_O97M_Obfuse_HK{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.HK,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {23 49 66 20 54 72 75 65 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 5f } //01 00 
		$a_01_1 = {41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 41 6e 64 20 31 20 54 68 65 6e } //01 00 
		$a_03_2 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 90 02 08 46 75 6e 63 74 69 6f 6e 20 74 69 6d 65 47 65 74 54 69 6d 65 90 02 05 20 4c 69 62 20 22 77 69 6e 6d 6d 2e 64 6c 6c 22 20 28 29 20 41 73 20 4c 6f 6e 67 90 00 } //01 00 
		$a_01_3 = {50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 57 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 28 42 79 56 61 6c 20 78 34 a6 53 5a 43 } //00 00 
	condition:
		any of ($a_*)
 
}