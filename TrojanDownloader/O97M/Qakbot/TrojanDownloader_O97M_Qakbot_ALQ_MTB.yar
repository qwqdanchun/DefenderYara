
rule TrojanDownloader_O97M_Qakbot_ALQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.ALQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 43 6f 6e 73 74 20 61 63 58 54 44 30 20 41 73 20 53 74 72 69 6e 67 20 3d 20 22 31 30 2e 32 33 2e 33 31 2e 33 2e 30 2e 32 39 2e 31 30 2e 32 39 22 } //01 00 
		$a_03_1 = {50 75 62 6c 69 63 20 43 6f 6e 73 74 20 61 72 44 49 4c 20 41 73 20 53 74 72 69 6e 67 20 3d 20 22 31 32 2e 38 35 2e 35 31 2e 33 31 2e 32 39 2e 30 2e 38 2e 32 39 2e 31 34 2e 32 2e 31 31 2e 31 34 2e 32 37 2e 31 34 2e 35 31 2e 31 34 2e 90 02 15 2e 36 35 2e 37 2e 32 37 2e 31 34 22 90 00 } //01 00 
		$a_03_2 = {46 75 6e 63 74 69 6f 6e 20 61 4f 53 68 72 28 90 02 07 2c 20 90 02 07 29 90 02 10 20 3d 20 54 72 69 6d 28 90 02 07 20 58 6f 72 20 90 02 07 29 90 00 } //01 00 
		$a_03_3 = {44 69 6d 20 90 02 07 20 41 73 20 53 74 72 69 6e 67 90 02 10 20 3d 20 22 22 90 00 } //01 00 
		$a_01_4 = {53 75 62 20 61 47 65 5a 76 6f 28 29 } //01 00 
		$a_01_5 = {3d 20 61 6d 47 70 69 28 61 33 5a 6c 57 47 28 61 63 58 54 44 30 29 29 } //01 00 
		$a_03_6 = {53 68 65 6c 6c 20 90 02 07 20 26 20 22 20 22 20 26 20 90 02 10 45 6e 64 20 53 75 62 90 00 } //01 00 
		$a_03_7 = {3d 20 53 70 6c 69 74 28 90 02 07 2c 20 22 2e 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}