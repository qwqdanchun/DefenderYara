
rule Worm_Win32_Darby{
	meta:
		description = "Worm:Win32/Darby,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1b 00 26 00 00 01 00 "
		
	strings :
		$a_00_0 = {45 00 73 00 63 00 72 00 69 00 74 00 6f 00 72 00 69 00 6f 00 } //01 00 
		$a_00_1 = {73 00 76 00 68 00 6f 00 73 00 74 00 } //01 00 
		$a_00_2 = {42 00 61 00 72 00 64 00 69 00 65 00 6c 00 } //01 00 
		$a_00_3 = {50 00 72 00 6f 00 79 00 65 00 63 00 74 00 6f 00 } //01 00 
		$a_00_4 = {63 00 6f 00 6e 00 65 00 63 00 74 00 } //01 00 
		$a_00_5 = {63 00 65 00 72 00 72 00 6f 00 } //01 00 
		$a_00_6 = {4e 00 49 00 43 00 4b 00 } //01 00 
		$a_00_7 = {55 00 53 00 45 00 52 00 } //01 00 
		$a_00_8 = {74 00 65 00 72 00 72 00 61 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_9 = {68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_10 = {7a 00 6f 00 6e 00 61 00 76 00 2e 00 6f 00 72 00 67 00 } //01 00 
		$a_00_11 = {61 00 6f 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_12 = {6d 00 73 00 6e 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_13 = {6c 00 61 00 74 00 69 00 6e 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_14 = {79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_15 = {73 00 74 00 61 00 72 00 74 00 6d 00 65 00 64 00 69 00 61 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_00_16 = {70 00 72 00 6f 00 64 00 69 00 67 00 79 00 2e 00 6d 00 78 00 } //01 00 
		$a_00_17 = {75 00 73 00 65 00 72 00 73 00 2e 00 75 00 6e 00 64 00 65 00 72 00 6e 00 65 00 74 00 2e 00 6f 00 72 00 67 00 } //01 00 
		$a_00_18 = {63 00 72 00 61 00 63 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_19 = {45 00 78 00 70 00 6c 00 6f 00 69 00 74 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_00_20 = {43 00 72 00 61 00 63 00 6b 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_00_21 = {67 00 65 00 6e 00 65 00 72 00 61 00 74 00 6f 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_22 = {41 72 63 68 69 76 6f 73 20 64 65 20 70 72 6f 67 72 61 6d 61 } //01 00 
		$a_01_23 = {49 6e 74 65 72 6e 65 74 47 65 74 43 6f 6e 6e 65 63 74 65 64 53 74 61 74 65 } //01 00 
		$a_00_24 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //01 00 
		$a_00_25 = {57 53 41 43 61 6e 63 65 6c 42 6c 6f 63 6b 69 6e 67 43 61 6c 6c } //03 00 
		$a_00_26 = {66 35 07 00 0f bf c0 50 8d 4d } //03 00 
		$a_00_27 = {6f 00 73 00 73 00 77 00 3d 00 28 00 28 00 } //03 00 
		$a_00_28 = {54 00 68 00 61 00 73 00 70 00 66 00 75 00 62 00 } //03 00 
		$a_00_29 = {4a 00 6e 00 64 00 75 00 68 00 74 00 68 00 61 00 73 00 } //02 00 
		$a_00_30 = {50 00 6e 00 69 00 63 00 68 00 70 00 74 00 } //02 00 
		$a_00_31 = {44 00 72 00 75 00 75 00 62 00 69 00 73 00 } //03 00 
		$a_00_32 = {57 00 68 00 6b 00 6e 00 64 00 6e 00 62 00 74 00 } //03 00 
		$a_00_33 = {7e 00 53 00 68 00 68 00 6b 00 74 00 } //02 00 
		$a_00_34 = {54 00 7e 00 74 00 73 00 62 00 6a 00 } //03 00 
		$a_00_35 = {43 00 6e 00 74 00 66 00 65 00 6b 00 62 00 55 00 62 00 } //02 00 
		$a_00_36 = {72 00 69 00 63 00 62 00 75 00 69 00 62 00 73 00 } //02 00 
		$a_00_37 = {5b 00 45 00 73 00 36 00 29 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}