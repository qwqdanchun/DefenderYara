
rule TrojanDownloader_O97M_Qakbot_ERY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.ERY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 56 69 75 72 6e 69 28 29 } //01 00 
		$a_01_1 = {26 20 53 68 65 65 74 73 28 22 44 6f 63 73 32 22 29 2e 52 61 6e 67 65 28 22 41 41 35 22 29 } //01 00 
		$a_01_2 = {64 6c 70 61 74 68 20 3d 20 53 68 65 65 74 73 28 22 44 6f 63 73 33 22 29 2e 52 61 6e 67 65 28 22 41 41 31 33 22 29 } //01 00 
		$a_03_3 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 90 02 07 2c 20 64 6c 70 61 74 68 2c 20 30 2c 20 30 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_4 = {23 49 66 20 57 69 6e 36 34 20 54 68 65 6e 90 02 08 23 45 6c 73 65 90 02 07 23 45 6e 64 20 49 66 90 0c 02 00 23 45 6c 73 65 90 0c 02 00 23 45 6e 64 20 49 66 90 00 } //01 00 
		$a_03_5 = {23 49 66 20 56 42 41 37 20 54 68 65 6e 90 0c 02 00 50 72 69 76 61 74 65 20 44 65 63 6c 61 72 65 20 50 74 72 53 61 66 65 20 46 75 6e 63 74 69 6f 6e 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 4c 69 62 20 22 75 72 6c 6d 6f 6e 22 20 5f 90 00 } //01 00 
		$a_01_6 = {41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 20 28 42 79 56 61 6c 20 70 43 61 6c 6c 65 72 20 41 73 20 4c 6f 6e 67 2c 20 5f } //00 00 
	condition:
		any of ($a_*)
 
}