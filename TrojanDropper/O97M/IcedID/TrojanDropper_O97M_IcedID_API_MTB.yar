
rule TrojanDropper_O97M_IcedID_API_MTB{
	meta:
		description = "TrojanDropper:O97M/IcedID.API!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {29 66 6f 72 90 02 1f 3d 30 74 6f 90 02 1f 28 90 02 1f 29 2d 31 73 74 65 70 32 90 02 1f 3d 90 1b 00 2f 32 90 02 1f 28 90 1b 03 29 3d 32 35 35 2d 90 02 1f 28 90 02 1f 26 90 02 1f 28 90 1b 02 2c 90 1b 00 29 26 90 1b 09 28 90 1b 02 2c 90 1b 00 2b 31 29 29 6e 65 78 74 90 00 } //01 00 
		$a_03_1 = {66 75 6e 63 74 69 6f 6e 90 02 1f 28 90 02 1f 2c 90 02 1f 2c 6f 70 74 69 6f 6e 61 6c 90 02 1f 3d 66 61 6c 73 65 29 69 66 90 1b 03 74 68 65 6e 90 02 1f 3d 6d 69 64 28 90 1b 01 2c 90 1b 02 2b 31 2c 31 29 65 6c 73 65 90 1b 05 3d 90 02 1f 28 90 02 1f 28 29 2c 90 1b 01 2c 90 1b 02 29 65 6e 64 69 66 90 1b 00 3d 90 1b 05 65 6e 64 66 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_01_2 = {69 66 77 69 6e 36 34 74 68 65 6e 74 72 75 65 65 6c 73 65 66 61 6c 73 65 65 6e 64 69 66 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 6f 70 74 69 6f 6e 61 6c } //01 00  ifwin64thentrueelsefalseendifendfunctionfunctionoptional
		$a_01_3 = {4c 69 62 20 22 75 73 65 72 33 32 22 20 41 6c 69 61 73 20 22 43 61 6c 6c 57 69 6e 64 6f 77 50 72 6f 63 41 22 20 28 42 79 56 61 6c } //01 00  Lib "user32" Alias "CallWindowProcA" (ByVal
		$a_03_4 = {61 73 63 6d 69 64 90 02 0f 6d 6f 64 6c 65 6e 90 02 0f 31 31 6d 6f 64 6c 65 6e 90 02 0f 31 90 02 1f 6d 69 64 90 02 1f 6e 65 78 74 90 02 0a 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}