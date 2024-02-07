
rule TrojanDownloader_O97M_Donoff_SSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {23 49 66 20 56 42 41 37 20 54 68 65 6e 90 02 03 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 53 75 62 20 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 45 72 72 6f 72 20 4c 69 62 20 22 63 3a 5c 2e 69 6e 74 65 6c 5c 2e 72 65 6d 5c 31 2e 70 6e 67 90 00 } //01 00 
		$a_01_1 = {4f 70 65 6e 20 22 63 3a 5c 2e 69 6e 74 65 6c 5c 2e 72 65 6d 5c 31 2e 70 6e 67 22 20 46 6f 72 20 41 70 70 65 6e 64 20 41 73 20 46 69 6c 65 4e 75 6d } //01 00  Open "c:\.intel\.rem\1.png" For Append As FileNum
		$a_03_2 = {2b 20 68 65 78 32 61 73 63 69 69 28 68 65 78 32 61 73 63 69 69 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 57 6f 72 64 73 28 90 02 05 29 29 29 20 2b 20 68 65 78 32 61 73 63 69 69 28 68 65 78 32 61 73 63 69 69 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 57 6f 72 64 73 28 90 02 05 29 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Donoff_SSM_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Donoff.SSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 73 28 90 02 15 2c 20 90 02 15 29 90 02 03 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 1b 00 29 2e 65 78 65 63 20 22 63 3a 5c 77 69 6e 64 6f 77 73 5c 65 78 70 6c 6f 72 65 72 20 22 20 26 20 90 1b 01 90 02 03 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_1 = {2e 53 61 76 65 41 73 32 20 46 69 6c 65 4e 61 6d 65 3a 3d 90 02 16 2c 20 46 69 6c 65 46 6f 72 6d 61 74 3a 3d 32 90 02 03 45 6e 64 20 57 69 74 68 90 00 } //01 00 
		$a_03_2 = {3d 20 22 68 73 2e 74 70 69 22 90 02 03 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 73 20 53 74 72 52 65 76 65 72 73 65 28 22 6c 6c 65 22 20 2b 20 90 02 0f 20 2b 20 22 72 63 73 77 22 29 2c 20 90 02 20 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_01_3 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 6b 65 79 77 6f 72 64 73 29 } //00 00  = StrReverse(ThisDocument.keywords)
	condition:
		any of ($a_*)
 
}