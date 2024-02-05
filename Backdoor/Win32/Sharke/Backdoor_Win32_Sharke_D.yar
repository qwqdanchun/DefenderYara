
rule Backdoor_Win32_Sharke_D{
	meta:
		description = "Backdoor:Win32/Sharke.D,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 4b 00 43 00 55 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //01 00 
		$a_01_1 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //01 00 
		$a_01_2 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_01_3 = {63 61 70 43 72 65 61 74 65 43 61 70 74 75 72 65 57 69 6e 64 6f 77 41 } //01 00 
		$a_01_4 = {43 4d 53 4e 4d 65 73 73 65 6e 67 65 72 50 61 73 73 77 6f 72 64 73 } //01 00 
		$a_01_5 = {43 4d 53 4e 45 78 70 6c 6f 72 65 72 50 61 73 73 77 6f 72 64 73 } //01 00 
		$a_01_6 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //01 00 
		$a_01_7 = {56 00 4d 00 57 00 61 00 72 00 65 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_8 = {5c 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 61 00 5c 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 5c 00 } //01 00 
		$a_01_9 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //01 00 
		$a_01_10 = {43 4f 75 74 6c 6f 6f 6b 41 63 63 6f 75 6e 74 73 } //01 00 
		$a_01_11 = {72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 2f 00 73 00 20 00 2f 00 75 00 } //01 00 
		$a_01_12 = {4e 74 53 68 75 74 64 6f 77 6e 53 79 73 74 65 6d } //01 00 
		$a_01_13 = {69 61 6d 61 73 68 61 72 6b 70 6c 75 67 69 6e } //01 00 
		$a_01_14 = {56 00 4d 00 57 00 61 00 72 00 65 00 55 00 73 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_15 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}