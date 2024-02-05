
rule Backdoor_Win32_Mocbot{
	meta:
		description = "Backdoor:Win32/Mocbot,SIGNATURE_TYPE_PEHSTR,0c 00 0a 00 18 00 00 03 00 "
		
	strings :
		$a_01_0 = {ba 80 11 40 00 b9 } //03 00 
		$a_01_1 = {00 00 e8 0f 00 00 00 ba } //02 00 
		$a_01_2 = {42 e2 fa c2 08 00 } //01 00 
		$a_01_3 = {40 00 80 32 } //05 00 
		$a_01_4 = {33 c9 66 b9 6c 6c 51 68 33 32 2e 64 68 77 73 32 5f 54 ff d0 8b d8 } //05 00 
		$a_01_5 = {40 00 3d 99 01 00 00 75 24 6a 00 6a 00 68 01 02 00 00 ff 75 f8 ff 15 } //05 00 
		$a_01_6 = {88 45 e0 80 7d e0 30 74 11 80 7d e0 31 74 02 eb 0f c7 45 f4 01 00 00 00 eb 16 } //04 00 
		$a_01_7 = {25 73 5c 64 64 62 75 67 5c 64 63 70 72 6f 6d 6f } //04 00 
		$a_01_8 = {2e 77 61 6c 6c 6c 6f 61 6e 2e 63 6f 6d } //04 00 
		$a_01_9 = {2e 68 6f 75 73 65 68 6f 74 2e 63 6f 6d } //03 00 
		$a_01_10 = {5b 65 78 65 63 5d 20 3a } //03 00 
		$a_01_11 = {50 6f 4e 47 20 25 2e 35 30 30 73 0d } //03 00 
		$a_01_12 = {72 65 73 75 6c 74 20 69 6e 20 73 79 73 74 65 6d 20 69 6e 73 74 61 62 69 6c 69 74 79 } //03 00 
		$a_01_13 = {5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 43 6f 6e 74 72 6f 6c 5c 4c 73 61 } //03 00 
		$a_01_14 = {2a 21 61 64 6d 69 6e 40 61 64 6d 69 6e } //02 00 
		$a_01_15 = {5f 4f 73 63 61 72 5f } //02 00 
		$a_01_16 = {5c 49 50 43 24 } //01 00 
		$a_01_17 = {5c 42 52 4f 57 53 45 52 } //01 00 
		$a_01_18 = {5c 50 49 50 45 5c } //01 00 
		$a_01_19 = {4c 41 4e 4d 41 4e 20 32 2e 31 } //01 00 
		$a_01_20 = {72 65 73 74 72 69 63 74 61 6e 6f 6e 79 6d 6f 75 73 } //01 00 
		$a_01_21 = {2a 50 52 49 56 4d 53 47 20 2a } //01 00 
		$a_01_22 = {2a 64 64 6f 73 2a } //01 00 
		$a_01_23 = {25 2e 31 32 38 73 5c 25 2e 36 34 73 } //00 00 
	condition:
		any of ($a_*)
 
}