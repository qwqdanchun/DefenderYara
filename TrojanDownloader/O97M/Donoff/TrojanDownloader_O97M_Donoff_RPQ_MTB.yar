
rule TrojanDownloader_O97M_Donoff_RPQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.RPQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 79 55 52 4c 20 3d 20 22 68 74 74 70 3a 2f 2f 32 30 2e 31 39 36 2e 32 31 33 2e 31 39 2f 66 69 72 65 77 61 6c 6c 2e 65 78 65 22 } //01 00 
		$a_01_1 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 22 43 3a 5c 57 49 4e 44 4f 57 53 5c 54 65 6d 70 5c 54 72 6f 75 62 6c 65 73 68 6f 6f 74 65 72 2e 7a 69 70 22 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Donoff_RPQ_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.RPQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 65 64 59 6f 75 59 6f 75 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 42 75 69 6c 74 49 6e 44 6f 63 75 6d 65 6e 74 50 72 6f 70 65 72 74 69 65 73 28 22 43 6f 6d 70 61 6e 79 22 29 2e 56 61 6c 75 65 } //01 00 
		$a_01_1 = {63 61 72 6f 6c 69 6e 65 4b 69 6e 67 53 65 61 20 3d 20 53 74 72 52 65 76 65 72 73 65 28 72 65 64 59 6f 75 59 6f 75 29 } //01 00 
		$a_01_2 = {2e 45 78 65 63 75 74 65 20 46 69 6e 64 54 65 78 74 3a 3d 22 25 35 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 69 6e 4c 69 6e 65 4d 79 2c 20 52 65 70 6c 61 63 65 3a 3d 77 64 52 65 70 6c 61 63 65 41 6c 6c } //01 00 
		$a_01_3 = {53 65 74 20 6b 69 6e 67 4b 69 6e 67 59 6f 75 20 3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 0d 0a 6b 69 6e 67 4b 69 6e 67 59 6f 75 2e 72 75 6e 20 6c 69 6e 65 4d 79 4d 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Donoff_RPQ_MTB_3{
	meta:
		description = "TrojanDownloader:O97M/Donoff.RPQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 2f 22 26 22 2f 22 26 22 69 22 26 22 6d 22 26 22 70 22 26 22 65 22 26 22 72 22 26 22 69 22 26 22 61 22 26 22 6c 22 26 22 6d 22 26 22 6d 22 26 22 2e 63 22 26 22 6f 22 26 22 6d 22 26 22 2f 34 22 26 22 32 22 26 22 33 22 26 22 51 22 26 22 75 22 26 22 76 22 26 22 70 22 26 22 43 2f 66 22 26 22 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_1 = {22 68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 22 26 22 3a 2f 22 26 22 2f 6e 22 26 22 69 22 26 22 6d 22 26 22 69 78 22 26 22 74 22 26 22 75 22 26 22 74 22 26 22 6f 22 26 22 72 22 26 22 69 22 26 22 61 22 26 22 6c 22 26 22 73 22 26 22 2e 69 22 26 22 72 2f 53 22 26 22 70 22 26 22 69 22 26 22 31 22 26 22 6d 22 26 22 64 22 26 22 64 22 26 22 70 22 26 22 36 22 26 22 69 22 26 22 57 22 26 22 32 22 26 22 2f 66 22 26 22 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //01 00 
		$a_01_2 = {68 22 26 22 74 22 26 22 74 22 26 22 70 22 26 22 73 3a 2f 22 26 22 2f 74 22 26 22 65 22 26 22 63 22 26 22 68 22 26 22 6e 22 26 22 6f 22 26 22 7a 22 26 22 6f 22 26 22 6e 22 26 22 65 22 26 22 2e 61 22 26 22 7a 2f 5a 22 26 22 34 66 22 26 22 4d 22 26 22 46 22 26 22 38 22 26 22 69 22 26 22 37 22 26 22 32 22 26 22 6c 22 26 22 37 22 26 22 45 2f 66 22 26 22 65 2e 68 22 26 22 74 22 26 22 6d 22 26 22 6c 22 } //00 00 
	condition:
		any of ($a_*)
 
}