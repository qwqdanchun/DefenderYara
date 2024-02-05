
rule Trojan_O97M_Namunigan_A{
	meta:
		description = "Trojan:O97M/Namunigan.A,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 45 78 65 63 51 75 65 72 79 28 22 53 65 6c 65 63 74 20 2a 20 46 72 6f 6d 20 57 69 6e 33 32 5f 4e 65 74 77 6f 72 6b 41 64 61 70 74 65 72 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 20 57 68 65 72 65 20 49 50 45 6e 61 62 6c 65 64 20 3d 20 54 72 75 65 22 29 } //01 00 
		$a_01_1 = {73 74 72 4d 73 67 42 6f 78 20 3d 20 73 74 72 4d 73 67 42 6f 78 20 26 20 22 49 50 20 41 64 64 72 65 73 73 3a 20 22 20 26 20 73 74 72 49 50 20 26 20 22 3b 20 22 } //01 00 
		$a_00_2 = {3d 20 22 68 74 74 70 3a 2f 2f 22 20 26 } //01 00 
		$a_00_3 = {26 20 22 2e 78 79 7a 3a 22 20 26 } //01 00 
		$a_01_4 = {55 73 65 72 44 6f 6d 61 69 6e 20 26 20 22 5c 22 20 26 20 6f 62 6a 4e 65 74 2e 55 73 65 72 4e 61 6d 65 20 26 20 22 5c 3b 20 22 20 26 20 49 50 20 26 20 73 6f 66 74 } //01 00 
		$a_01_5 = {4d 65 64 69 61 20 43 65 6e 74 65 72 20 50 43 20 35 2e 30 3b 20 2e 4e 45 54 20 43 4c 52 20 31 2e 31 2e 34 33 32 32 3b 20 2e 4e 45 54 20 43 4c 52 20 33 2e 35 2e 33 30 37 32 39 29 23 23 23 20 22 20 26 20 6f 62 6a 4e 65 74 2e 43 6f 6d 70 75 74 65 72 4e 61 6d 65 20 26 20 22 3b 20 22 20 26 } //00 00 
		$a_00_6 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}