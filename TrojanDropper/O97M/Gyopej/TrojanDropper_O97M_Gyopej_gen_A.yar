
rule TrojanDropper_O97M_Gyopej_gen_A{
	meta:
		description = "TrojanDropper:O97M/Gyopej.gen!A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_02_0 = {3d 20 45 6e 76 69 72 6f 6e 28 90 05 20 06 61 2d 7a 30 2d 39 28 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 2c 20 22 90 05 20 06 61 2d 7a 30 2d 39 22 29 29 20 26 20 22 5c 22 20 26 20 90 05 20 06 61 2d 7a 30 2d 39 20 26 20 90 05 20 06 61 2d 7a 30 2d 39 28 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 02 03 29 20 2b 20 43 68 72 28 90 00 } //02 00 
		$a_02_1 = {58 6f 72 20 28 90 05 20 06 61 2d 7a 30 2d 39 28 28 90 05 20 06 61 2d 7a 30 2d 39 28 90 05 20 06 61 2d 7a 30 2d 39 29 20 2b 20 90 05 20 06 61 2d 7a 30 2d 39 28 90 05 20 06 61 2d 7a 30 2d 39 29 29 20 4d 6f 64 20 32 35 36 29 29 90 00 } //01 00 
		$a_02_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 05 20 06 61 2d 7a 30 2d 39 28 90 05 20 06 61 2d 7a 30 2d 39 28 22 90 05 20 06 61 2d 7a 30 2d 39 22 29 2c 20 22 90 05 20 06 61 2d 7a 30 2d 39 22 29 29 2e 65 78 65 63 20 22 22 22 22 20 26 20 90 05 20 06 61 2d 7a 30 2d 39 20 26 20 22 22 22 22 90 00 } //01 00 
		$a_02_3 = {28 53 74 72 43 6f 6e 76 28 90 05 20 06 61 2d 7a 30 2d 39 2e 52 65 73 70 6f 6e 73 65 42 6f 64 79 2c 20 76 62 55 6e 69 63 6f 64 65 29 2c 20 90 05 20 06 61 2d 7a 30 2d 39 28 90 05 20 06 61 2d 7a 30 2d 39 28 22 90 05 20 06 61 2d 7a 30 2d 39 22 29 2c 20 22 90 05 20 06 61 2d 7a 30 2d 39 22 29 29 90 00 } //00 00 
		$a_00_4 = {cf 18 } //00 00 
	condition:
		any of ($a_*)
 
}