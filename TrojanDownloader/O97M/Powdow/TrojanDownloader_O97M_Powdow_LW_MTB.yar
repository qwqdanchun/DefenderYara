
rule TrojanDownloader_O97M_Powdow_LW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.LW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 51 42 46 41 46 67 41 49 41 41 6f 41 45 34 41 5a 51 42 33 41 43 30 41 54 77 42 69 41 47 6f 41 5a 51 42 6a 41 48 51 41 49 41 42 4f 41 47 55 41 64 41 41 75 41 46 63 41 5a 51 42 69 41 45 4d 41 62 41 42 70 41 47 55 41 62 67 42 30 41 43 6b 41 4c 67 42 45 41 47 38 41 64 77 42 75 41 47 77 41 62 77 42 68 41 47 51 41 55 77 42 30 41 48 49 41 61 51 42 75 41 47 63 41 4b 41 41 69 41 47 67 41 64 41 42 30 41 48 41 41 63 77 41 36 41 43 38 41 4c 77 42 79 41 47 45 41 64 77 41 75 41 47 63 41 61 51 42 30 41 47 67 41 64 51 42 69 41 48 55 41 63 77 42 6c 41 48 49 41 } //01 00 
		$a_00_1 = {53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //01 00 
		$a_00_2 = {53 68 65 6c 6c 28 22 70 6f 77 65 72 73 68 65 6c 6c 20 2d 65 6e 63 } //01 00 
		$a_00_3 = {76 62 4e 6f 72 6d 61 6c 46 6f 63 75 73 } //01 00 
		$a_00_4 = {4d 73 67 42 6f 78 20 28 61 29 } //00 00 
	condition:
		any of ($a_*)
 
}