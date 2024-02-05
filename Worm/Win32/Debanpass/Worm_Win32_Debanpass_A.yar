
rule Worm_Win32_Debanpass_A{
	meta:
		description = "Worm:Win32/Debanpass.A,SIGNATURE_TYPE_PEHSTR,08 02 06 02 19 00 00 64 00 "
		
	strings :
		$a_01_0 = {44 3a 5c 4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 53 74 75 64 69 6f 5c 56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //64 00 
		$a_01_1 = {44 6f 49 54 50 61 79 50 61 6c } //64 00 
		$a_01_2 = {5b 00 41 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //64 00 
		$a_01_3 = {45 00 42 00 41 00 59 00 20 00 2d 00 20 00 53 00 49 00 47 00 4e 00 20 00 49 00 4e 00 } //64 00 
		$a_01_4 = {63 00 3a 00 5c 00 74 00 6d 00 70 00 73 00 73 00 73 00 2e 00 6c 00 6f 00 67 00 } //01 00 
		$a_01_5 = {57 69 6e 64 6f 77 73 20 55 70 64 61 74 61 } //01 00 
		$a_01_6 = {77 68 65 72 65 41 6d 49 } //01 00 
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00 
		$a_01_8 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00 
		$a_01_9 = {61 75 74 6f 52 75 6e } //01 00 
		$a_01_10 = {45 6e 63 72 79 70 74 } //01 00 
		$a_01_11 = {5c 5c 2e 5c 50 68 79 73 69 63 61 6c 44 72 69 76 65 30 } //01 00 
		$a_01_12 = {5c 5c 2e 5c 53 4d 41 52 54 56 53 44 } //01 00 
		$a_01_13 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5f 00 53 00 65 00 72 00 76 00 65 00 72 00 } //01 00 
		$a_01_14 = {3f 00 67 00 69 00 66 00 74 00 3d 00 } //01 00 
		$a_01_15 = {64 00 65 00 6c 00 20 00 61 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_16 = {3a 00 20 00 73 00 65 00 6c 00 66 00 6b 00 69 00 6c 00 6c 00 } //01 00 
		$a_01_17 = {61 00 74 00 74 00 72 00 69 00 62 00 20 00 2d 00 61 00 20 00 2d 00 72 00 20 00 2d 00 73 00 20 00 2d 00 68 00 20 00 } //01 00 
		$a_01_18 = {6c 00 6f 00 67 00 69 00 6e 00 5f 00 65 00 6d 00 61 00 69 00 6c 00 } //01 00 
		$a_01_19 = {6c 00 6f 00 67 00 69 00 6e 00 5f 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_20 = {41 00 63 00 63 00 65 00 70 00 74 00 2d 00 4c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 3a 00 20 00 7a 00 68 00 2d 00 63 00 6e 00 } //01 00 
		$a_01_21 = {55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 3a 00 20 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 2f 00 34 00 2e 00 30 00 20 00 28 00 63 00 6f 00 6d 00 70 00 61 00 74 00 69 00 62 00 6c 00 65 00 3b 00 20 00 4d 00 53 00 49 00 45 00 20 00 36 00 2e 00 30 00 3b 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 20 00 35 00 2e 00 31 00 3b 00 20 00 53 00 56 00 31 00 3b 00 20 00 4d 00 61 00 78 00 74 00 68 00 6f 00 6e 00 3b 00 20 00 2e 00 4e 00 45 00 54 00 20 00 43 00 4c 00 52 00 20 00 31 00 2e 00 31 00 2e 00 34 00 33 00 32 00 32 00 29 00 } //01 00 
		$a_01_22 = {6f 00 70 00 65 00 6e 00 3d 00 } //01 00 
		$a_01_23 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 28 00 52 00 29 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 28 00 52 00 29 00 20 00 4f 00 70 00 65 00 72 00 61 00 74 00 69 00 6e 00 67 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00 
		$a_01_24 = {56 00 69 00 73 00 74 00 61 00 } //00 00 
	condition:
		any of ($a_*)
 
}