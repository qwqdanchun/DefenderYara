
rule TrojanDropper_O97M_GraceWire_BO_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BO!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 72 69 76 61 74 65 20 53 75 62 20 55 73 65 72 46 6f 72 6d 5f 41 63 74 69 76 61 74 65 28 29 90 0c 02 00 44 6f 45 76 65 6e 74 73 90 00 } //01 00 
		$a_01_1 = {63 74 61 63 6b 50 69 70 20 3d 20 63 74 61 63 6b 50 75 70 20 26 20 50 61 67 65 31 31 2e 52 61 6e 67 65 28 22 41 31 30 30 22 29 2e 56 61 6c 75 65 } //01 00 
		$a_03_2 = {50 75 62 6c 69 63 52 65 73 75 6d 45 72 61 73 65 42 79 41 72 72 61 79 4c 69 73 74 20 63 74 61 63 6b 50 6f 70 2c 20 63 74 61 63 6b 50 69 70 2c 20 6f 66 62 6c 90 02 08 56 69 73 74 61 51 20 63 74 61 63 6b 50 75 70 90 00 } //01 00 
		$a_03_3 = {46 4d 4f 44 5f 4f 4b 20 54 68 65 6e 90 02 05 6d 73 2e 67 52 2e 65 73 75 6c 74 20 3d 20 4d 73 67 42 6f 78 28 72 65 73 75 6c 74 20 26 20 22 29 20 22 29 90 00 } //01 00 
		$a_01_4 = {46 69 6c 65 43 6f 70 79 20 63 74 61 63 6b 50 75 70 2c 20 63 74 61 63 6b 50 69 70 } //00 00 
	condition:
		any of ($a_*)
 
}