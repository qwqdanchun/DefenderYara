
rule Trojan_Win32_BravePrince_A_dha{
	meta:
		description = "Trojan:Win32/BravePrince.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 29 00 00 0a 00 "
		
	strings :
		$a_01_0 = {41 34 37 34 44 35 32 44 2d 38 43 34 34 2d 43 36 37 44 2d 42 42 46 42 2d 44 35 31 33 32 33 32 46 38 41 31 37 } //0a 00 
		$a_01_1 = {00 77 77 77 2e 62 72 61 76 65 70 72 69 6e 63 65 2e 63 6f 6d 00 } //05 00 
		$a_01_2 = {5c 74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d 20 64 61 75 6d 63 6c 65 61 6e 65 72 2e 65 78 65 } //05 00 
		$a_01_3 = {00 45 6e 64 20 52 65 71 20 66 61 69 6c 65 64 00 } //05 00 
		$a_01_4 = {00 61 64 64 69 74 69 6f 6e 61 6c 20 68 65 61 64 65 72 20 66 61 69 6c 65 64 2e 2e 2e 00 } //05 00 
		$a_01_5 = {00 53 65 6e 64 52 65 71 20 66 61 69 6c 65 64 00 } //05 00 
		$a_03_6 = {00 5c 50 49 5f 30 30 90 01 01 2e 64 61 74 00 90 00 } //05 00 
		$a_01_7 = {2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 25 30 34 64 25 30 34 64 25 30 34 64 25 30 34 64 } //05 00 
		$a_01_8 = {00 6d 73 31 32 2e 61 63 6d 00 } //05 00 
		$a_01_9 = {00 30 34 64 25 30 34 64 25 30 34 64 25 30 34 64 00 20 26 20 61 72 70 20 2d 61 20 3e 3e 22 00 } //05 00 
		$a_01_10 = {00 25 30 38 58 2d 25 30 38 58 2d 25 30 38 58 2d 25 30 38 58 00 25 30 38 58 25 30 38 58 25 30 38 58 25 30 38 58 00 } //03 00 
		$a_01_11 = {00 22 20 2f 73 20 2f 61 20 3e 3e 22 00 63 6d 64 2e 65 78 65 20 2f 63 20 64 69 72 20 22 00 } //03 00 
		$a_01_12 = {00 72 75 6e 64 6c 6c 33 32 2e 65 78 65 20 22 25 73 22 20 52 75 6e 00 } //03 00 
		$a_01_13 = {25 73 5c 43 61 63 68 65 25 30 34 64 2e 64 61 74 } //03 00 
		$a_01_14 = {31 31 35 62 38 62 36 39 32 65 30 65 30 34 35 36 39 32 63 66 32 38 30 62 34 33 36 37 33 35 63 37 37 61 35 61 39 65 38 61 39 65 37 65 64 35 36 63 39 36 35 66 38 37 64 62 35 62 32 61 32 65 63 65 33 } //03 00 
		$a_01_15 = {25 73 5c 25 73 5f 25 30 33 64 } //03 00 
		$a_01_16 = {25 73 5c 6d 67 5f 25 30 34 64 } //03 00 
		$a_01_17 = {00 4d 6f 6e 74 67 6f 6d 65 72 79 28 29 00 } //01 00 
		$a_01_18 = {00 25 73 5c 2a 2e 6c 6e 6b 00 } //01 00 
		$a_01_19 = {45 6e 75 6d 20 43 72 65 61 74 65 54 68 72 65 61 64 28 29 20 66 61 69 6c 65 64 3a } //01 00 
		$a_01_20 = {49 6e 74 65 72 6e 65 74 57 72 69 74 65 46 69 6c 65 20 66 61 69 6c 65 64 } //01 00 
		$a_01_21 = {00 41 63 74 69 6f 6e 20 43 65 6e 74 65 72 00 } //01 00 
		$a_01_22 = {00 4d 6f 7a 69 6c 6c 61 2f 35 2e 30 20 28 57 69 6e 64 6f 77 73 20 4e 54 20 35 2e 32 3b 20 72 76 3a 31 32 2e 30 29 20 47 65 63 6b 6f 2f 32 30 31 30 30 31 30 31 20 46 69 72 65 66 6f 78 2f 31 32 2e 30 00 } //01 00 
		$a_01_23 = {00 72 65 71 75 65 73 74 20 66 61 69 6c 65 64 2e 2e 2e 00 } //01 00 
		$a_01_24 = {00 70 63 61 63 6c 69 2e 64 6c 6c 00 } //01 00 
		$a_01_25 = {25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 31 64 5f 31 } //01 00 
		$a_01_26 = {25 30 34 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 25 30 32 64 } //01 00 
		$a_01_27 = {00 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 25 63 00 } //01 00 
		$a_01_28 = {00 63 3a 5c 75 73 65 72 73 00 } //01 00 
		$a_01_29 = {6d 6f 76 65 54 6f 46 6f 6c 64 65 72 49 64 } //01 00 
		$a_01_30 = {68 74 74 70 73 3a 2f 2f 6c 6f 67 69 6e 73 2e 64 61 75 6d 2e 6e 65 74 2f 61 63 63 6f 75 6e 74 73 2f } //01 00 
		$a_01_31 = {68 74 74 70 73 3a 2f 2f 6d 61 69 6c 2e 64 61 75 6d 2e 6e 65 74 2f 6c 6f 67 69 6e 3f 75 72 6c 3d 68 74 74 70 25 33 41 25 32 46 25 32 46 6d 61 69 6c 2e 64 61 75 6d 2e 6e 65 74 25 32 46 } //01 00 
		$a_01_32 = {3c 2f 50 3e 5c 72 5c 6e 3c 50 3e 26 6e 62 73 70 3b 3c 2f 50 3e 5c 72 5c 6e 3c 50 3e 26 6e 62 73 70 3b 3c 2f 50 3e 5c 72 5c 6e 3c 50 3e 26 6e 62 73 70 3b 3c 2f 50 3e 3c 2f 64 69 76 3e 3c 2f 74 64 3e 3c 2f 74 72 3e 3c 2f 74 61 62 6c 65 3e 22 2c } //01 00 
		$a_01_33 = {7b 22 73 75 62 6a 65 63 74 22 3a 22 22 2c 22 63 6f 6e 74 65 6e 74 73 22 3a 22 3c 74 61 62 6c 65 20 63 6c 61 73 73 20 3d 20 5c 22 74 78 63 2d 77 72 61 70 70 65 72 5c 22 20 62 6f 72 64 65 72 3d 5c 22 30 5c 22 20 63 65 6c 6c 73 70 61 63 69 6e 67 3d 5c 22 30 5c 22 20 63 65 6c 6c 70 61 64 64 69 6e 67 3d } //01 00 
		$a_01_34 = {7b 22 63 6f 6d 70 6f 73 65 72 49 64 22 3a 22 22 2c 22 74 6f 4c 69 73 74 22 3a 5b 7b 22 6e 61 6d 65 22 3a 22 22 2c 22 61 64 64 72 22 3a 22 22 7d 5d 2c 22 63 63 4c 69 73 74 22 3a 5b 5d 2c 22 62 63 63 4c 69 73 74 22 3a 5b 5d 2c 22 66 72 6f 6d 22 3a 7b 22 61 64 64 72 22 3a 22 22 2c 22 6e 61 6d 65 22 3a 22 22 7d } //01 00 
		$a_01_35 = {68 74 74 70 73 3a 2f 2f 63 6d 61 69 6c 2e 64 61 75 6d 2e 6e 65 74 2f 76 32 2f } //01 00 
		$a_01_36 = {68 74 74 70 3a 2f 2f 6d 61 69 6c 2e 64 61 75 6d 2e 6e 65 74 2f 6b 6f 63 6c 2f } //01 00 
		$a_01_37 = {68 74 74 70 73 3a 2f 2f 6d 61 69 6c 2e 64 61 75 6d 2e 6e 65 74 } //01 00 
		$a_01_38 = {68 74 74 70 73 3a 2f 2f 6c 6f 67 69 6e 73 2e 64 61 75 6d 2e 6e 65 74 2f 61 63 63 6f 75 6e 74 73 2f 6c 6f 67 6f 75 74 2e 64 6f 3f 75 72 6c 3d 68 74 74 70 25 33 41 25 32 46 25 32 46 77 77 77 2e 64 61 75 6d 2e 6e 65 74 25 32 46 25 33 46 6e 69 6c 5f 70 72 6f 66 69 6c 65 25 33 44 6c 6f 67 6f 75 74 } //01 00 
		$a_01_39 = {00 68 74 74 70 3a 2f 2f 6e 69 64 2d 68 65 6c 70 2d 70 63 68 61 6e 67 65 2e 61 74 77 65 62 70 61 67 65 73 2e 63 6f 6d 2f 68 6f 6d 65 2f 77 65 62 2f 70 6f 73 74 2e 70 68 70 00 } //01 00 
		$a_01_40 = {00 68 74 74 70 3a 2f 2f 6e 69 64 2d 68 65 6c 70 2d 70 63 68 61 6e 67 65 2e 61 74 77 65 62 70 61 67 65 73 2e 63 6f 6d 2f 68 6f 6d 65 2f 77 65 62 2f 64 6f 77 6e 6c 6f 61 64 2e 70 68 70 3f 66 69 6c 65 6e 61 6d 65 3d 25 73 26 6b 65 79 3d 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}