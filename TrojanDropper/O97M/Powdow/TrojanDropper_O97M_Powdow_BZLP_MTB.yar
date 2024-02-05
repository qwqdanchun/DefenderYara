
rule TrojanDropper_O97M_Powdow_BZLP_MTB{
	meta:
		description = "TrojanDropper:O97M/Powdow.BZLP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 20 22 61 22 20 46 6f 72 20 4f 75 74 70 75 74 20 41 73 20 23 31 90 0c 02 00 50 72 69 6e 74 20 23 31 2c 20 56 42 41 24 2e 52 65 70 6c 61 63 65 28 90 02 20 2c 20 22 26 31 22 2c 20 22 22 29 90 0c 02 00 43 6c 6f 73 65 20 23 31 90 02 40 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_1 = {3d 20 4e 65 77 20 49 57 73 68 52 75 6e 74 69 6d 65 4c 69 62 72 61 72 79 2e 57 73 68 53 68 65 6c 6c 90 0c 02 00 57 69 74 68 20 90 02 20 2e 72 75 6e 20 90 02 20 20 26 20 22 61 22 90 0c 02 00 45 6e 64 20 57 69 74 68 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_2 = {53 75 62 20 64 6f 63 75 6d 65 6e 74 5f 6f 70 65 6e 28 29 90 0c 02 00 52 20 22 90 02 20 2e 68 74 22 2c 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 90 0c 02 00 45 6e 64 20 53 75 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}