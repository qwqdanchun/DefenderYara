
rule TrojanDownloader_O97M_Zloader_SS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Zloader.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {7a 63 6f 6d 74 65 63 68 2e 63 6f 6d 2f 72 6f 62 31 32 32 44 7a 6a 73 64 46 41 2e 64 6c 6c 20 2d 4a 20 2d 6f 20 63 } //01 00 
		$a_01_1 = {63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 63 64 6e 75 70 } //01 00 
		$a_01_2 = {52 49 5a 4a 5a 43 42 52 } //01 00 
		$a_01_3 = {72 75 6e 64 6c 6c 33 32 20 63 3a 5c 75 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Zloader_SS_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Zloader.SS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 75 72 6c 20 68 74 74 70 3a 2f 2f 31 38 35 2e 32 34 34 2e 34 31 2e 32 39 2f 6f 6f 69 } //01 00 
		$a_01_1 = {77 79 2e 70 64 66 20 2d 4a 20 2d 6f 20 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 63 64 6e 75 70 64 61 74 65 } //01 00 
		$a_01_2 = {72 75 6e 64 6c 6c 33 32 20 63 3a 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 63 64 6e 75 70 64 61 74 65 72 61 70 69 2e 70 6e 67 } //01 00 
		$a_01_3 = {43 55 56 50 51 52 42 41 58 57 47 50 } //00 00 
	condition:
		any of ($a_*)
 
}