
rule TrojanDropper_O97M_Farheyt_H{
	meta:
		description = "TrojanDropper:O97M/Farheyt.H,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {2b 20 22 45 6e 76 69 72 6f 6e 6d 65 22 20 2b 20 90 02 10 28 22 4e 54 73 74 52 69 6e 47 53 22 29 90 00 } //01 00 
		$a_00_1 = {2c 20 56 62 4d 65 74 68 6f 64 2c 20 22 25 74 65 6d 70 25 22 29 } //01 00 
		$a_02_2 = {26 20 22 5c 90 02 10 2e 65 78 65 22 90 00 } //01 00 
		$a_00_3 = {3d 20 56 42 41 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 } //01 00 
		$a_00_4 = {22 52 75 6e 22 2c 20 56 62 4d 65 74 68 6f 64 2c } //01 00 
		$a_03_5 = {4f 70 65 6e 20 90 02 10 20 46 6f 72 20 42 69 6e 61 72 79 20 41 63 63 65 73 73 20 57 72 69 74 65 20 41 73 20 23 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 ff 
	condition:
		any of ($a_*)
 
}