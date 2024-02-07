
rule TrojanDownloader_O97M_EncDoc_SST_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SST!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 6f 6e 74 65 6e 74 2e 46 69 6e 64 2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 33 2d 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 22 22 2c 20 52 65 70 6c 61 63 65 3a 3d 32 } //01 00  Content.Find.Execute FindText:="3-", ReplaceWith:="", Replace:=2
		$a_03_1 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 73 28 90 02 20 2c 20 90 02 20 29 90 02 03 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 1b 00 20 2b 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 63 61 74 65 67 6f 72 79 22 29 2e 56 61 6c 75 65 29 2e 65 78 65 63 20 22 63 3a 5c 77 69 6e 64 6f 77 73 5c 65 78 70 6c 6f 72 65 72 20 22 20 2b 20 90 1b 01 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_2 = {3d 20 22 73 63 72 69 70 74 22 90 02 03 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 73 20 54 72 69 6d 28 22 77 22 20 2b 20 90 02 16 20 2b 20 22 2e 22 29 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_EncDoc_SST_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SST!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {4d 73 67 42 6f 78 20 22 65 72 72 3a 20 90 02 0f 20 63 6f 72 72 75 70 74 65 64 90 00 } //01 00 
		$a_03_1 = {2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 68 65 78 32 61 73 63 69 69 28 68 65 78 32 61 73 63 69 69 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 57 6f 72 64 73 28 90 02 04 29 29 29 29 2e 52 75 6e 20 22 72 75 6e 64 6c 6c 33 32 20 43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 44 6f 63 75 6d 65 6e 74 73 5c 31 2e 90 03 03 05 78 6d 6c 6d 73 74 73 63 22 20 2b 20 22 2c 90 00 } //01 00 
		$a_03_2 = {50 72 69 6e 74 20 23 46 69 6c 65 4e 75 6d 2c 20 68 65 78 32 61 73 63 69 69 28 68 65 78 32 61 73 63 69 69 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 57 6f 72 64 73 28 90 02 03 29 29 29 20 2b 20 68 65 78 32 61 73 63 69 69 28 68 65 78 32 61 73 63 69 69 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 57 6f 72 64 73 28 90 02 03 29 29 29 90 00 } //01 00 
		$a_03_3 = {6e 75 6d 20 3d 20 4d 69 64 28 54 65 78 74 54 6f 46 69 6c 65 2c 20 79 2c 20 32 29 90 02 07 56 61 6c 75 65 20 3d 20 56 61 6c 75 65 20 2b 20 43 68 72 28 56 61 6c 28 22 26 68 22 20 26 20 6e 75 6d 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}