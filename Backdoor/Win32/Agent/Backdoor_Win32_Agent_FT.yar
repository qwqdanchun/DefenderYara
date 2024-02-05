
rule Backdoor_Win32_Agent_FT{
	meta:
		description = "Backdoor:Win32/Agent.FT,SIGNATURE_TYPE_PEHSTR_EXT,14 01 14 01 14 00 00 64 00 "
		
	strings :
		$a_00_0 = {53 65 72 76 69 63 65 44 6c 6c 00 00 5c 00 00 00 53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 5c 50 61 72 61 6d 65 74 65 72 73 00 73 65 72 76 65 72 2e 64 6c 6c 00 00 25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 00 00 00 00 69 72 6d 6f 6e 00 00 00 6e 65 74 73 76 63 73 00 53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 } //64 00 
		$a_00_1 = {72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 76 63 68 6f 73 74 00 00 00 00 20 3e 4e 55 4c 00 00 00 20 2f 63 20 64 65 6c 20 00 00 00 00 43 4f 4d 53 50 45 43 00 5c 75 73 65 72 33 32 2e 64 6c 6c 00 66 69 6c 65 00 00 00 00 70 6c 78 70 63 69 00 00 5c 64 72 69 76 65 72 73 5c 70 6c 78 70 63 69 2e 73 79 73 00 5c 53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 44 52 49 56 45 52 53 5c 70 6c 78 70 63 69 2e 73 79 73 00 73 65 72 76 65 72 00 00 64 72 69 76 65 72 00 00 5c 61 73 63 33 35 35 31 2e 73 79 73 00 00 00 00 5c 77 74 69 6d 65 2e 65 78 65 00 00 5c 73 65 72 76 65 72 2e 64 6c 6c 00 5c 70 6c 78 70 63 69 2e 73 79 73 00 7a 6c 63 6c 69 65 6e 74 2e 65 78 65 00 00 00 00 3c 75 6e 6b 6e 6f 77 6e 3e 00 00 00 } //05 00 
		$a_01_2 = {5c 77 74 69 6d 65 2e 65 78 65 } //05 00 
		$a_01_3 = {5c 73 65 72 76 65 72 2e 64 6c 6c } //0a 00 
		$a_01_4 = {5c 53 79 73 74 65 6d 52 6f 6f 74 5c 73 79 73 74 65 6d 33 32 5c 44 52 49 56 45 52 53 5c 70 6c 78 70 63 69 2e 73 79 73 } //05 00 
		$a_01_5 = {7a 6c 63 6c 69 65 6e 74 2e 65 78 65 } //0a 00 
		$a_01_6 = {5c 61 73 63 33 35 35 31 2e 73 79 73 } //0a 00 
		$a_01_7 = {5c 64 72 69 76 65 72 73 5c 70 6c 78 70 63 69 2e 73 79 73 } //05 00 
		$a_01_8 = {70 6c 78 70 63 69 } //0a 00 
		$a_01_9 = {25 53 79 73 74 65 6d 52 6f 6f 74 25 5c 53 79 73 74 65 6d 33 32 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2d 6b 20 6e 65 74 73 76 63 73 } //01 00 
		$a_01_10 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 76 63 68 6f 73 74 } //01 00 
		$a_01_11 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c 25 73 5c 50 61 72 61 6d 65 74 65 72 73 } //01 00 
		$a_01_12 = {5c 75 73 65 72 33 32 2e 64 6c 6c } //01 00 
		$a_01_13 = {20 2f 63 20 64 65 6c 20 } //02 00 
		$a_01_14 = {47 65 74 41 63 74 69 76 65 57 69 6e 64 6f 77 } //02 00 
		$a_01_15 = {73 65 72 76 65 72 2e 64 6c 6c } //02 00 
		$a_01_16 = {53 65 72 76 69 63 65 44 6c 6c } //02 00 
		$a_00_17 = {53 00 45 00 52 00 56 00 45 00 52 00 31 00 } //02 00 
		$a_01_18 = {69 72 6d 6f 6e } //02 00 
		$a_00_19 = {64 00 72 00 69 00 76 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}