
rule PWS_Win32_Bzub_gen_dll{
	meta:
		description = "PWS:Win32/Bzub.gen!dll,SIGNATURE_TYPE_PEHSTR_EXT,2c 00 28 00 2c 00 00 01 00 "
		
	strings :
		$a_00_0 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 65 2d 67 6f 6c 64 2e 63 6f 6d } //01 00 
		$a_00_1 = {2f 61 63 63 74 2f 62 61 6c 61 6e 63 65 2e 61 73 70 } //01 00 
		$a_00_2 = {2f 61 63 63 74 2f 61 63 63 74 2e 61 73 70 } //01 00 
		$a_00_3 = {32 30 39 2e 32 30 30 2e 31 36 39 2e 31 30 } //01 00 
		$a_00_4 = {55 70 70 65 72 48 6f 73 74 } //01 00 
		$a_00_5 = {57 69 6e 49 44 } //01 00 
		$a_00_6 = {50 53 74 6f 72 61 67 65 } //01 00 
		$a_00_7 = {41 44 61 74 61 } //01 00 
		$a_00_8 = {2f 61 63 63 74 2f 63 6f 6e 74 61 63 74 75 73 2e 61 73 70 } //01 00 
		$a_01_9 = {41 63 63 6f 75 6e 74 49 44 3d } //01 00 
		$a_01_10 = {50 61 73 73 50 68 72 61 73 65 3d } //01 00 
		$a_00_11 = {61 70 70 6c 69 63 61 74 69 6f 6e 2f 6f 63 74 65 74 2d 73 74 72 65 61 6d } //01 00 
		$a_00_12 = {43 75 73 74 6f 6d 65 72 45 6d 61 69 6c 3d } //02 00 
		$a_00_13 = {3c 74 69 74 6c 65 3e 65 2d 67 6f 6c 64 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 6d 65 6e 74 3c 2f 74 69 74 6c 65 3e } //02 00 
		$a_00_14 = {48 65 6c 76 65 74 69 63 61 2c 20 73 61 6e 73 2d 73 65 72 69 66 22 20 73 69 7a 65 3d 22 32 22 3e } //02 00 
		$a_00_15 = {55 6e 61 62 6c 65 20 74 6f 20 6c 6f 67 69 6e 20 74 6f 20 61 63 63 6f 75 6e 74 } //01 00 
		$a_00_16 = {41 43 43 4f 55 4e 54 20 44 41 54 41 3a } //02 00 
		$a_00_17 = {45 2d 6d 61 69 6c 20 3d 20 25 73 } //02 00 
		$a_00_18 = {4d 65 74 61 6c 20 3d 20 25 73 } //02 00 
		$a_00_19 = {57 69 67 68 74 20 3d 20 25 73 } //02 00 
		$a_00_20 = {45 71 75 69 76 20 3d 20 25 73 } //02 00 
		$a_00_21 = {56 61 6c 75 65 20 3d 20 25 73 } //01 00 
		$a_00_22 = {50 52 4f 54 45 43 54 45 44 20 53 54 4f 52 41 47 45 3a } //02 00 
		$a_00_23 = {41 63 63 6f 75 6e 74 20 4e 61 6d 65 20 2d 20 25 73 } //02 00 
		$a_00_24 = {50 4f 50 33 20 53 65 72 76 65 72 20 2d 20 25 73 } //02 00 
		$a_00_25 = {50 4f 50 33 20 55 73 65 72 20 4e 61 6d 65 20 2d 20 25 73 } //02 00 
		$a_00_26 = {53 4d 54 50 20 45 6d 61 69 6c 20 41 64 64 72 65 73 73 20 2d 20 25 73 } //01 00 
		$a_00_27 = {49 6e 74 65 72 6e 65 74 20 41 63 63 6f 75 6e 74 20 4d 61 6e 61 67 65 72 5c 41 63 63 6f 75 6e 74 73 } //02 00 
		$a_00_28 = {4d 61 69 6c 20 41 63 63 6f 75 6e 74 73 20 28 25 2e 38 78 29 } //02 00 
		$a_00_29 = {48 54 54 50 2f 46 54 50 20 41 63 63 6f 75 6e 74 73 20 28 25 2e 38 78 29 } //02 00 
		$a_00_30 = {50 61 73 73 44 61 74 61 20 3d 20 25 } //02 00 
		$a_00_31 = {52 65 73 6f 75 72 63 65 20 3d 20 25 } //01 00 
		$a_00_32 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 } //02 00 
		$a_00_33 = {31 32 33 61 62 25 2e 38 6c 78 } //02 00 
		$a_00_34 = {2d 2d 25 73 } //03 00 
		$a_00_35 = {66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 68 69 74 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 25 73 22 } //02 00 
		$a_00_36 = {6d 75 6c 74 69 70 61 72 74 2f 66 6f 72 6d 2d 64 61 74 61 3b 20 62 6f 75 6e 64 61 72 79 3d 25 73 } //01 00 
		$a_00_37 = {43 72 79 70 74 55 6e 70 72 6f 74 65 63 74 44 61 74 61 } //01 00 
		$a_00_38 = {43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 68 65 6c 6c 53 65 72 76 69 63 65 4f 62 6a 65 63 74 44 65 6c 61 79 4c 6f 61 64 } //01 00 
		$a_00_39 = {43 4c 53 49 44 5c 7b 35 32 33 34 35 35 45 34 2d 41 42 43 44 2d 41 42 43 44 2d 31 31 31 34 2d 44 37 30 39 41 44 44 33 44 44 41 42 7d 5c 49 6e 50 72 6f 63 53 65 72 76 65 72 33 32 } //02 00 
		$a_00_40 = {32 35 36 2e 32 35 36 2e 32 35 36 2e 32 35 36 } //02 00 
		$a_00_41 = {5b 25 58 5b 25 73 5d 5b 49 50 3a 20 25 73 20 25 73 20 25 73 5d } //02 00 
		$a_00_42 = {6f 6e 65 2d 74 69 6d 65 20 50 49 4e } //02 00 
		$a_00_43 = {3e 65 2d 6d 61 69 6c 3a 3c } //00 00 
	condition:
		any of ($a_*)
 
}