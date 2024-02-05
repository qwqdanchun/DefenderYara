
rule TrojanDropper_O97M_GraceWire_BI_MTB{
	meta:
		description = "TrojanDropper:O97M/GraceWire.BI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {6f 66 62 6c 20 3d 20 55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 33 2e 54 61 67 20 2b 20 22 5c 90 02 10 2e 64 6c 6c 90 00 } //01 00 
		$a_03_1 = {63 74 61 63 6b 50 75 70 20 3d 20 4a 6f 69 6e 28 41 72 72 61 79 28 55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 31 2e 54 61 67 2c 20 22 5c 90 02 10 2e 78 6c 73 78 22 29 2c 20 22 22 29 90 00 } //01 00 
		$a_03_2 = {63 74 61 63 6b 50 6f 70 20 3d 20 4a 6f 69 6e 28 41 72 72 61 79 28 90 02 15 2c 20 55 73 65 72 46 6f 72 6d 36 2e 54 65 78 74 42 6f 78 33 2e 56 61 6c 75 65 29 2c 20 22 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}