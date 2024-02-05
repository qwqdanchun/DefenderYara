
rule TrojanDownloader_O97M_Obfuse_SA_MSR{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SA!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00 
		$a_01_1 = {55 52 4c 4d 4f 4e } //01 00 
		$a_03_2 = {68 74 74 70 73 3a 2f 2f 61 70 65 72 66 6f 72 72 6d 69 6e 67 6e 65 78 74 79 6f 75 2e 78 79 7a 2f 90 02 07 2f 90 02 03 2e 64 6c 6c 90 00 } //01 00 
		$a_03_3 = {43 3a 5c 6b 66 55 6f 66 57 6a 5c 90 02 07 5c 90 02 07 2e 64 6c 6c 20 44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_SA_MSR_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.SA!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {78 48 74 74 70 2e 4f 70 65 6e 90 02 22 43 68 72 57 28 31 30 34 29 20 26 20 43 68 72 57 28 31 31 36 29 20 26 20 43 68 72 57 28 31 31 36 29 20 26 20 43 68 72 57 28 31 31 32 29 20 26 20 43 68 72 57 28 35 38 29 20 26 20 43 68 72 57 28 34 37 29 20 26 20 43 68 72 57 28 34 37 29 20 26 20 43 68 72 57 28 34 39 29 20 26 20 43 68 72 57 28 35 31 29 20 26 20 43 68 72 57 28 35 31 29 20 26 20 43 68 72 57 28 34 36 29 20 26 20 43 68 72 57 28 34 39 29 20 26 20 43 68 72 57 28 35 36 29 20 26 20 43 68 72 57 28 34 36 29 20 26 20 43 68 72 57 28 34 39 29 20 26 20 43 68 72 57 28 35 34 29 20 26 20 43 68 72 57 28 35 37 29 20 26 20 43 68 72 57 28 34 36 29 20 26 20 43 68 72 57 28 35 37 29 90 00 } //01 00 
		$a_03_1 = {53 68 65 6c 6c 20 28 90 02 32 43 68 72 57 28 34 36 29 20 26 20 43 68 72 57 28 31 30 31 29 20 26 20 43 68 72 57 28 31 32 30 29 20 26 20 43 68 72 57 28 31 30 31 29 29 90 00 } //01 00 
		$a_01_2 = {73 61 76 65 74 6f 66 69 6c 65 } //01 00 
		$a_01_3 = {78 48 74 74 70 2e 53 65 6e 64 } //00 00 
	condition:
		any of ($a_*)
 
}