
rule Backdoor_Win32_Budu{
	meta:
		description = "Backdoor:Win32/Budu,SIGNATURE_TYPE_PEHSTR_EXT,18 00 14 00 12 00 00 03 00 "
		
	strings :
		$a_03_0 = {2a 00 5c 00 41 00 45 00 3a 00 5c 00 62 00 6f 00 74 00 6e 00 65 00 74 00 5c 00 90 02 0a 41 00 6e 00 74 00 69 00 58 00 5c 00 41 00 6e 00 74 00 69 00 58 00 5c 00 41 00 6e 00 74 00 69 00 58 00 2e 00 76 00 62 00 70 00 90 00 } //03 00 
		$a_01_1 = {6d 00 61 00 72 00 64 00 69 00 6e 00 34 00 37 00 00 00 00 00 22 00 00 00 75 00 69 00 33 00 61 00 38 00 39 00 67 00 74 00 6a 00 68 00 61 00 67 00 61 00 67 00 73 00 6a 00 69 00 } //03 00 
		$a_01_2 = {61 00 2e 00 6e 00 2e 00 74 00 2e 00 69 00 2e 00 78 00 00 00 1e 00 00 00 61 00 2e 00 6e 00 2e 00 74 00 2e 00 69 00 2e 00 78 00 2e 00 62 00 2e 00 6f 00 2e 00 74 00 } //03 00 
		$a_01_3 = {5c 00 74 00 6d 00 70 00 66 00 69 00 6c 00 65 00 31 00 32 00 33 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_4 = {5b 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 5d 00 20 00 2d 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 } //02 00 
		$a_01_5 = {5b 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 5d 00 20 00 2d 00 20 00 53 00 75 00 63 00 63 00 65 00 73 00 73 00 66 00 75 00 6c 00 6c 00 79 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 64 00 } //02 00 
		$a_01_6 = {55 00 50 00 44 00 41 00 54 00 45 00 5d 00 20 00 2d 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 64 00 21 00 } //02 00 
		$a_01_7 = {50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 20 00 64 00 6f 00 65 00 73 00 6e 00 74 00 20 00 65 00 78 00 69 00 73 00 74 00 21 00 } //02 00 
		$a_01_8 = {4e 00 49 00 43 00 4b 00 20 00 00 00 0a 00 00 00 55 00 53 00 45 00 52 00 } //01 00 
		$a_01_9 = {35 00 38 00 35 00 30 00 35 00 30 00 35 00 35 00 38 00 39 00 45 00 35 00 35 00 37 00 35 00 33 00 35 00 31 00 35 00 32 00 33 00 31 00 43 00 30 00 45 00 42 00 30 00 45 00 45 00 38 00 78 00 78 00 78 00 78 00 78 00 30 00 31 00 78 00 38 00 33 00 46 00 38 00 30 00 32 00 37 00 34 00 32 00 32 00 38 00 35 00 43 00 30 00 37 00 34 00 32 00 35 00 38 00 42 00 34 00 35 00 31 00 30 00 33 00 44 00 30 00 30 00 38 00 30 00 30 00 30 00 30 00 30 00 37 00 34 00 34 00 33 00 33 00 44 00 30 00 31 00 38 00 30 00 30 00 30 00 30 00 30 00 } //01 00 
		$a_01_10 = {37 00 34 00 35 00 42 00 45 00 38 00 32 00 30 00 30 00 30 00 30 00 30 00 30 00 30 00 35 00 41 00 35 00 39 00 35 00 42 00 35 00 46 00 43 00 39 00 43 00 32 00 31 00 34 00 30 00 30 00 45 00 38 00 31 00 33 00 30 00 30 00 30 00 30 00 30 00 30 00 45 00 42 00 46 00 31 00 36 00 38 00 78 00 78 00 78 00 78 00 78 00 30 00 32 00 78 00 36 00 41 00 46 00 43 00 46 00 46 00 37 00 35 00 30 00 43 00 45 00 38 00 78 00 78 00 78 00 78 00 78 00 30 00 33 00 78 00 45 00 42 00 45 00 30 00 46 00 46 00 37 00 35 00 31 00 38 00 46 00 46 00 } //01 00 
		$a_01_11 = {37 00 35 00 31 00 34 00 46 00 46 00 37 00 35 00 31 00 30 00 46 00 46 00 37 00 35 00 30 00 43 00 36 00 38 00 78 00 78 00 78 00 78 00 78 00 30 00 34 00 78 00 45 00 38 00 78 00 78 00 78 00 78 00 78 00 30 00 35 00 78 00 43 00 33 00 42 00 42 00 78 00 78 00 78 00 78 00 78 00 30 00 36 00 78 00 38 00 42 00 34 00 35 00 31 00 34 00 42 00 46 00 78 00 78 00 78 00 78 00 78 00 30 00 37 00 78 00 38 00 39 00 44 00 39 00 46 00 32 00 41 00 46 00 37 00 35 00 42 00 36 00 32 00 39 00 43 00 42 00 34 00 42 00 38 00 42 00 31 00 43 00 39 00 44 00 } //01 00 
		$a_01_12 = {78 00 78 00 78 00 78 00 78 00 30 00 38 00 78 00 45 00 42 00 31 00 44 00 42 00 42 00 78 00 78 00 78 00 78 00 78 00 30 00 39 00 78 00 38 00 42 00 34 00 35 00 31 00 34 00 42 00 46 00 78 00 78 00 78 00 78 00 78 00 30 00 41 00 78 00 38 00 39 00 44 00 39 00 46 00 32 00 41 00 46 00 37 00 35 00 39 00 37 00 32 00 39 00 43 00 42 00 34 00 42 00 38 00 42 00 31 00 43 00 39 00 44 00 78 00 78 00 78 00 78 00 78 00 30 00 42 00 78 00 38 00 39 00 35 00 44 00 30 00 38 00 38 00 42 00 31 00 42 00 38 00 42 00 35 00 42 00 31 00 43 00 } //01 00 
		$a_01_13 = {43 00 53 00 6f 00 63 00 6b 00 65 00 74 00 50 00 6c 00 75 00 73 00 2e 00 52 00 65 00 63 00 76 00 44 00 61 00 74 00 61 00 } //02 00 
		$a_01_14 = {5b 00 53 00 59 00 53 00 49 00 4e 00 46 00 4f 00 5d 00 20 00 2d 00 20 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 20 00 4e 00 61 00 6d 00 65 00 3a 00 } //01 00 
		$a_01_15 = {70 00 69 00 6e 00 67 00 20 00 31 00 32 00 37 00 2e 00 30 00 2e 00 30 00 2e 00 31 00 } //01 00 
		$a_01_16 = {43 00 53 00 6f 00 63 00 6b 00 65 00 74 00 50 00 6c 00 75 00 73 00 2e 00 47 00 65 00 74 00 44 00 61 00 74 00 61 00 00 00 3e 00 00 00 4f 00 4b 00 20 00 42 00 79 00 74 00 65 00 73 00 20 00 6f 00 62 00 74 00 61 00 69 00 6e 00 65 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 62 00 75 00 66 00 66 00 65 00 72 00 3a 00 20 00 00 00 24 00 00 00 43 00 53 00 6f 00 63 00 6b 00 65 00 74 00 50 00 6c 00 75 00 73 00 2e 00 4c 00 69 00 73 00 74 00 65 00 6e 00 00 00 00 00 26 00 00 00 53 00 54 00 41 00 54 00 45 00 3a 00 20 00 73 00 63 00 6b 00 4c 00 69 00 73 00 74 00 65 } //01 00 
		$a_01_17 = {53 00 6f 00 63 00 6b 00 65 00 74 00 20 00 69 00 73 00 20 00 61 00 6c 00 72 00 65 00 61 00 64 00 79 00 20 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 65 00 64 00 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}