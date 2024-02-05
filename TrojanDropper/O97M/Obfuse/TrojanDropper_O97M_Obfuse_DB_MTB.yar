
rule TrojanDropper_O97M_Obfuse_DB_MTB{
	meta:
		description = "TrojanDropper:O97M/Obfuse.DB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 90 05 20 06 61 2d 7a 41 2d 5a 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 54 61 62 6c 65 73 28 90 04 01 03 30 2d 39 29 2e 43 65 6c 6c 28 90 04 01 03 30 2d 39 2c 20 90 04 01 03 30 2d 39 29 2e 52 61 6e 67 65 90 00 } //01 00 
		$a_03_1 = {3d 20 4d 69 64 28 90 05 20 06 61 2d 7a 41 2d 5a 2e 54 65 78 74 2c 20 90 04 01 03 30 2d 39 2c 20 4c 65 6e 28 90 1b 00 2e 54 65 78 74 29 20 2d 20 90 04 01 03 30 2d 39 29 90 00 } //01 00 
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 05 20 06 61 2d 7a 41 2d 5a 29 2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 90 05 20 06 61 2d 7a 41 2d 5a 90 00 } //01 00 
		$a_01_3 = {2e 54 65 78 74 52 65 74 72 69 65 76 61 6c 4d 6f 64 65 2e 49 6e 63 6c 75 64 65 48 69 64 64 65 6e 54 65 78 74 20 3d 20 54 72 75 65 } //00 00 
	condition:
		any of ($a_*)
 
}