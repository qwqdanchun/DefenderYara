
rule TrojanSpy_Win32_Cutwail_gen_B{
	meta:
		description = "TrojanSpy:Win32/Cutwail.gen!B,SIGNATURE_TYPE_PEHSTR,47 00 47 00 0d 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6d 61 78 74 72 79 62 61 64 66 72 6f 6d } //0a 00 
		$a_01_1 = {5c 77 63 78 5f 66 74 70 2e 69 6e 69 } //0a 00 
		$a_01_2 = {61 6e 6f 6e 79 6d 6f 75 73 } //0a 00 
		$a_01_3 = {74 65 73 74 32 35 } //0a 00 
		$a_01_4 = {53 4d 54 50 20 54 69 6d 65 6f 75 74 21 } //0a 00 
		$a_01_5 = {7b 72 63 70 74 5f 74 6f 7d } //0a 00 
		$a_01_6 = {7b 6d 61 69 6c 5f 66 72 6f 6d 7d } //01 00 
		$a_01_7 = {32 30 38 2e 36 36 2e 31 39 34 2e 32 34 32 } //01 00 
		$a_01_8 = {36 36 2e 32 34 36 2e 32 35 32 2e 32 31 35 } //01 00 
		$a_01_9 = {32 30 38 2e 36 36 2e 31 39 35 2e 37 31 } //01 00 
		$a_01_10 = {37 34 2e 35 33 2e 34 32 2e 33 34 } //01 00 
		$a_01_11 = {37 34 2e 35 33 2e 34 32 2e 36 31 } //01 00 
		$a_01_12 = {42 36 38 42 41 34 38 37 46 44 45 35 38 39 39 41 38 41 34 42 41 34 30 42 46 38 } //00 00 
	condition:
		any of ($a_*)
 
}