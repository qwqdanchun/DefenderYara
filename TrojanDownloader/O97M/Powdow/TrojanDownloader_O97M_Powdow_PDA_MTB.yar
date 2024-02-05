
rule TrojanDownloader_O97M_Powdow_PDA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.PDA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 42 78 77 79 69 7a 77 65 7a 63 6a 76 72 61 61 74 73 76 68 6f 61 2e 62 61 74 22 } //01 00 
		$a_01_1 = {22 45 43 48 4f 20 43 6f 6e 76 65 72 74 69 6e 67 20 45 78 63 65 6c 20 46 69 6c 65 73 20 74 6f 20 50 44 46 2c 20 50 6c 65 61 73 65 20 77 61 69 74 2e 2e 2e 22 } //01 00 
		$a_01_2 = {4a 41 42 51 41 48 49 41 62 77 42 6a 41 45 34 41 59 51 42 74 41 47 55 41 49 41 41 39 41 43 41 41 49 67 42 57 41 47 30 41 61 51 42 71 41 48 55 41 59 67 42 68 41 48 4d 41 61 77 42 6e 41 48 45 41 59 67 42 6d 41 47 30 41 61 67 42 76 41 47 49 41 64 67 42 6b 41 43 34 41 5a 51 42 34 41 47 55 41 49 67 41 37 41 43 67 41 54 67 42 6c 41 48 63 41 4c 51 42 50 41 47 49 41 61 67 42 6c 41 47 4d 41 64 41 41 67 41 46 4d 41 65 51 42 7a 41 48 51 41 5a 51 42 74 41 43 34 41 54 67 42 6c 41 48 51 41 4c 67 42 58 41 47 55 41 59 67 42 44 41 47 77 41 61 51 42 6c 41 47 34 41 64 41 } //01 00 
		$a_01_3 = {53 68 65 6c 6c 28 73 42 61 74 63 68 46 69 6c 65 2c 20 76 62 48 69 64 65 29 } //00 00 
	condition:
		any of ($a_*)
 
}