
rule Backdoor_Win64_Winnti_A_{
	meta:
		description = "Backdoor:Win64/Winnti.A!!Winnti.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,08 00 08 00 20 00 00 01 00 "
		
	strings :
		$a_00_0 = {58 5f 4c 41 53 54 3a 00 } //01 00 
		$a_00_1 = {58 2d 4d 41 52 4b 3a 00 } //01 00 
		$a_00_2 = {58 2d 45 4e 43 4f 44 45 3a 00 } //01 00 
		$a_00_3 = {25 75 2d 25 75 2d 2d 25 75 2d 2d 25 75 2d 25 75 2d 25 58 2d 25 75 2d 2d 2d 25 75 00 } //01 00 
		$a_00_4 = {73 65 6e 64 3a 20 25 75 20 73 68 75 74 64 6f 77 6e 2e 00 } //01 00 
		$a_00_5 = {73 65 6e 64 3a 20 25 75 20 65 6e 63 6f 64 65 20 65 72 72 6f 72 2e 00 } //01 00 
		$a_00_6 = {73 65 6e 64 3a 20 25 75 20 6d 65 6d 20 65 72 72 6f 72 2e 00 } //01 00 
		$a_00_7 = {73 65 6e 64 3a 20 25 75 20 6e 6f 74 20 66 6f 75 6e 64 2e 00 } //01 00 
		$a_00_8 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 61 6c 72 65 61 64 79 20 69 6e 20 70 72 6f 63 65 73 73 2c 20 25 75 2c 20 65 3d 25 75 2c 20 70 3d 25 75 2e 00 } //01 00 
		$a_00_9 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 65 6e 64 69 6e 67 2e 20 75 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_10 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 66 65 74 63 68 20 65 72 72 6f 72 2c 20 25 75 2e 00 } //01 00 
		$a_00_11 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 70 61 63 6b 65 74 3d 25 75 2c 20 65 6e 74 65 72 2c 20 25 75 2c 20 74 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_12 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 70 61 63 6b 65 74 3d 25 75 2c 20 6c 65 61 76 65 2c 20 25 75 2c 20 74 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_13 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 74 61 72 67 65 74 20 6e 6f 74 20 66 6f 75 6e 64 2c 20 25 75 2e 00 } //01 00 
		$a_00_14 = {65 76 65 6e 74 20 68 61 6e 64 6c 65 72 3a 20 75 6e 6b 6e 6f 77 6e 20 75 6e 69 74 20 74 79 70 65 3d 25 75 2c 20 25 75 2e 00 } //01 00 
		$a_00_15 = {77 61 69 74 34 70 6f 73 74 3a 20 42 65 67 69 6e 2c 20 70 74 72 3d 25 23 58 2c 20 6c 65 6e 3d 25 75 2c 20 75 69 64 3d 25 75 2c 20 74 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_16 = {77 61 69 74 34 70 6f 73 74 3a 20 45 6e 64 2c 20 75 69 64 3d 25 75 2c 20 72 65 73 3d 25 75 2c 20 74 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_17 = {73 65 6e 64 20 72 61 77 3a 20 72 65 62 75 69 6c 64 20 65 72 72 6f 72 2e 00 } //01 00 
		$a_00_18 = {73 65 6e 64 72 61 77 3a 20 63 68 75 6e 6b 2c 20 75 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_19 = {73 65 6e 64 72 61 77 3a 20 68 64 72 20 64 65 6c 69 76 65 72 2e 20 75 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_20 = {73 65 6e 64 72 61 77 3a 20 70 6f 73 74 20 65 72 72 6f 72 2c 20 75 69 64 3d 25 75 2c 20 70 74 72 3d 25 23 58 2c 20 6c 65 6e 3d 25 75 2c 20 72 65 73 3d 25 23 58 2c 20 25 23 58 2e 00 } //01 00 
		$a_00_21 = {73 65 6e 64 72 61 77 3a 20 70 74 72 3d 25 23 58 2c 20 6c 65 6e 3d 25 75 2c 20 73 74 61 74 65 3d 25 75 2c 20 75 69 64 3d 25 75 2e 00 } //01 00 
		$a_00_22 = {73 65 6e 64 72 61 77 3a 20 72 65 66 20 25 75 20 6e 6f 74 20 66 6f 75 6e 64 2c 20 25 23 58 2e 00 } //01 00 
		$a_00_23 = {73 65 6e 64 72 61 77 3a 20 73 68 75 74 64 6f 77 6e 2e 20 75 69 64 3d 25 75 2c 20 25 23 58 2e 00 } //01 00 
		$a_00_24 = {73 65 73 65 6e 64 3a 20 75 69 64 3d 25 75 2c 20 66 72 65 65 3d 25 75 2e 00 } //01 00 
		$a_00_25 = {70 72 6f 63 68 64 72 3a 20 6e 65 77 20 75 6e 69 74 79 20 6c 69 6e 6b 20 6d 65 6d 20 65 72 72 6f 72 2c 20 25 23 58 2c 20 75 69 64 3d 25 75 2c 20 66 63 3d 25 23 58 2e 00 } //01 00 
		$a_00_26 = {70 72 6f 63 68 64 72 3a 20 6e 65 77 20 75 6e 69 74 79 20 6c 69 6e 6b 2c 20 25 23 58 2c 20 75 69 64 3d 25 75 2c 20 6c 65 6e 3d 25 75 2c 20 66 63 3d 25 23 58 2e 00 } //01 00 
		$a_00_27 = {70 72 6f 63 68 64 72 3a 20 6e 65 77 20 6c 69 6e 6b 2c 20 25 23 58 2c 20 75 69 64 3d 25 75 2c 20 6c 65 6e 3d 25 75 2c 20 66 63 3d 25 23 58 2e 00 } //01 00 
		$a_00_28 = {45 64 69 50 61 72 74 79 4e 61 6d 65 00 } //01 00 
		$a_00_29 = {49 50 20 41 64 64 72 65 73 73 3a 25 64 2e 25 64 2e 25 64 2e 25 64 00 } //01 00 
		$a_00_30 = {65 6d 61 69 6c 3a 25 73 00 } //01 00 
		$a_00_31 = {6f 74 68 65 72 6e 61 6d 65 3a 3c 75 6e 73 75 70 70 6f 72 74 65 64 3e 00 } //05 00 
	condition:
		any of ($a_*)
 
}