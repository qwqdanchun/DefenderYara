
rule TrojanDownloader_O97M_Obfuse_ZK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ZK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 90 02 20 2e 68 74 61 22 90 00 } //01 00 
		$a_01_1 = {50 75 62 6c 69 63 20 53 75 62 20 62 75 74 74 6f 6e 31 5f 43 6c 69 63 6b 28 29 } //01 00 
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 } //01 00 
		$a_01_3 = {2e 65 78 65 63 20 70 28 67 65 74 77 63 29 } //01 00 
		$a_03_4 = {3d 20 52 65 70 6c 61 63 65 28 90 02 19 2c 20 90 02 1e 2c 20 90 02 19 29 90 00 } //01 00 
		$a_01_5 = {3d 20 53 70 6c 69 74 28 70 28 66 72 6d 2e 67 65 74 77 63 29 2c 20 22 20 22 29 } //01 00 
		$a_03_6 = {28 22 3c 68 74 6d 6c 3e 3c 62 6f 64 79 3e 3c 64 69 76 20 69 64 3d 27 63 6f 6e 74 65 6e 74 27 3e 66 54 74 6c 63 32 39 73 59 79 35 90 01 17 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}