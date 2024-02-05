
rule TrojanDownloader_O97M_Obfuse_GRV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GRV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 65 74 76 61 6c 20 3d 20 53 68 65 6c 6c 28 22 77 73 63 72 69 70 74 2e 65 78 65 20 6d 6f 7a 69 6c 6c 61 2e 76 62 73 22 29 } //01 00 
		$a_01_1 = {50 72 69 6e 74 20 23 54 65 78 74 46 69 6c 65 2c 20 52 61 6e 67 65 28 22 41 48 31 36 30 37 22 29 2e 56 61 6c 75 65 20 2b 20 52 61 6e 67 65 28 22 41 48 31 36 30 36 22 29 2e 56 61 6c 75 65 20 2b 20 52 61 6e 67 65 28 22 41 48 31 36 30 35 22 29 2e 56 61 6c 75 65 } //01 00 
		$a_01_2 = {46 69 6c 65 50 61 74 68 20 3d 20 22 6d 6f 7a 69 6c 6c 61 2e 76 62 73 22 } //01 00 
		$a_03_3 = {57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 90 0c 02 00 6d 61 63 68 69 6e 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}