
rule Worm_BAT_Cribz_A{
	meta:
		description = "Worm:BAT/Cribz.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 75 74 69 6c 2e 64 65 66 61 75 6c 74 2e 72 65 67 00 } //01 00 
		$a_01_1 = {22 4c 65 76 65 6c 31 52 65 6d 6f 76 65 22 3d 22 2e 62 61 74 3b 2e 63 6f 6d 3b 2e 65 78 65 3b 2e 6a 73 3b 2e 6a 73 65 3b 2e 72 65 67 3b 2e 76 62 65 3b 2e 76 62 73 22 } //01 00 
		$a_01_2 = {22 46 69 72 65 77 61 6c 6c 44 69 73 61 62 6c 65 4e 6f 74 69 66 79 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //01 00 
		$a_01_3 = {5c 4b 61 73 70 65 72 73 6b 79 41 6e 74 69 56 69 72 75 73 5d 0d 0a 22 44 69 73 61 62 6c 65 4d 6f 6e 69 74 6f 72 69 6e 67 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 31 } //01 00 
		$a_01_4 = {5c 53 65 72 76 69 63 65 73 5c 48 54 54 50 46 69 6c 74 65 72 5d 0d 0a 22 53 74 61 72 74 22 3d 64 77 6f 72 64 3a 30 30 30 30 30 30 30 32 } //01 00 
		$a_01_5 = {22 53 65 72 76 69 63 65 4d 61 69 6e 22 3d 22 53 76 63 68 6f 73 74 45 6e 74 72 79 5f 57 33 32 54 69 6d 65 22 } //00 00 
	condition:
		any of ($a_*)
 
}