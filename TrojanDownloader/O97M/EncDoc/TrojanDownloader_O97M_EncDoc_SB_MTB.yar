
rule TrojanDownloader_O97M_EncDoc_SB_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.SB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 53 70 6c 69 74 28 73 74 72 42 79 74 65 73 29 } //01 00 
		$a_01_1 = {3d 20 6f 62 6a 46 53 4f 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 50 61 74 68 20 26 20 22 5c 69 6d 61 67 65 30 30 33 2e 7a 69 70 22 2c 20 54 72 75 65 29 } //01 00 
		$a_01_2 = {46 6f 72 20 69 49 74 65 72 20 3d 20 4c 42 6f 75 6e 64 28 61 4e 75 6d 62 65 72 73 29 20 54 6f 20 55 42 6f 75 6e 64 28 61 4e 75 6d 62 65 72 73 29 } //01 00 
		$a_01_3 = {73 53 68 65 6c 6c 43 6f 64 65 20 3d 20 73 53 68 65 6c 6c 43 6f 64 65 20 2b 20 43 68 72 28 61 4e 75 6d 62 65 72 73 28 69 49 74 65 72 29 29 } //01 00 
		$a_01_4 = {73 53 68 65 6c 6c 43 6f 64 65 20 3d 20 73 53 68 65 6c 6c 43 6f 64 65 20 2b 20 50 61 72 73 65 42 79 74 65 73 28 22 36 30 20 33 33 20 36 38 20 37 39 20 36 37 20 38 34 20 38 39 20 38 30 20 36 39 20 33 32 20 31 30 34 20 31 31 36 20 31 30 39 20 31 30 38 20 36 32 20 31 30 20 36 30 20 31 30 34 20 31 31 36 20 31 30 39 20 31 30 38 20 36 32 20 31 30 20 36 30 20 31 30 34 22 29 } //01 00 
		$a_01_5 = {73 53 68 65 6c 6c 43 6f 64 65 20 3d 20 73 53 68 65 6c 6c 43 6f 64 65 20 2b 20 53 68 65 6c 6c 43 6f 64 65 31 28 29 } //00 00 
	condition:
		any of ($a_*)
 
}