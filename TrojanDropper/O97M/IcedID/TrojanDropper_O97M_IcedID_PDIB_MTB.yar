
rule TrojanDropper_O97M_IcedID_PDIB_MTB{
	meta:
		description = "TrojanDropper:O97M/IcedID.PDIB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 73 28 90 02 20 2c 20 90 02 20 29 90 0c 02 00 47 65 74 4f 62 6a 65 63 74 28 22 22 2c 20 74 65 78 74 31 28 22 63 61 74 65 67 6f 72 79 22 29 29 2e 65 78 65 63 20 53 74 72 52 65 76 65 72 73 65 28 22 20 72 65 72 6f 6c 70 78 65 5c 73 77 6f 64 6e 69 77 5c 3a 63 22 29 20 2b 20 90 02 20 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_01_1 = {3d 20 2e 45 78 65 63 75 74 65 28 46 69 6e 64 54 65 78 74 3a 3d 22 25 31 22 2c 20 52 65 70 6c 61 63 65 57 69 74 68 3a 3d 22 22 2c 20 52 65 70 6c 61 63 65 3a 3d 32 29 } //01 00 
		$a_03_2 = {53 74 72 52 65 76 65 72 73 65 28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 74 65 78 74 31 28 22 6b 65 79 77 6f 72 64 73 22 29 29 90 0c 02 00 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 53 61 76 65 41 73 32 20 46 69 6c 65 4e 61 6d 65 3a 3d 90 02 20 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}