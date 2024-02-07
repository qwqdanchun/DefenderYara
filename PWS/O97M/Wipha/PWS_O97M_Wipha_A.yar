
rule PWS_O97M_Wipha_A{
	meta:
		description = "PWS:O97M/Wipha.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {46 75 6e 63 74 69 6f 6e 20 75 70 6c 6f 61 64 50 4f 53 54 28 42 79 56 61 6c 20 75 73 65 72 90 02 08 5f 6e 6f 5f 73 70 61 63 65 73 20 41 73 20 53 74 72 69 6e 67 2c 20 42 79 56 61 6c 20 70 61 73 73 90 02 08 5f 6e 6f 5f 73 70 61 63 65 73 20 41 73 20 53 74 72 69 6e 67 2c 20 42 79 56 61 6c 20 6d 65 73 73 90 02 08 5f 6e 6f 5f 73 70 61 63 65 73 20 41 73 20 53 74 72 69 6e 67 29 90 00 } //01 00 
		$a_02_1 = {55 52 4c 20 3d 20 22 68 74 74 70 3a 2f 2f 90 02 60 2f 72 65 70 6f 72 74 65 72 2e 70 68 70 3f 6d 73 67 3d 22 20 26 20 6d 65 73 73 90 02 08 5f 6e 6f 5f 73 70 61 63 65 73 20 26 20 22 26 75 6e 61 6d 65 3d 22 20 26 20 75 73 65 72 90 02 08 5f 6e 6f 5f 73 70 61 63 65 73 20 26 20 22 26 70 77 6f 72 64 3d 22 20 26 20 70 61 73 73 90 02 08 5f 6e 6f 5f 73 70 61 63 65 73 90 00 } //01 00 
		$a_02_2 = {43 61 6c 6c 20 75 70 6c 6f 61 64 50 4f 53 54 28 90 02 0c 2c 20 90 02 0c 2c 20 22 90 02 28 22 29 90 00 } //00 00 
		$a_00_3 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}