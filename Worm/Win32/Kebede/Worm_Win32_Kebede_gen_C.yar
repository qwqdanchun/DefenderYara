
rule Worm_Win32_Kebede_gen_C{
	meta:
		description = "Worm:Win32/Kebede.gen!C,SIGNATURE_TYPE_PEHSTR,0d 00 0b 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 66 00 69 00 6c 00 65 00 73 00 79 00 73 00 74 00 65 00 6d 00 6f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_01_1 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_2 = {67 00 65 00 74 00 73 00 70 00 65 00 63 00 69 00 61 00 6c 00 66 00 6f 00 6c 00 64 00 65 00 72 00 } //01 00 
		$a_01_3 = {43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 57 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //01 00 
		$a_01_5 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 20 00 54 00 69 00 74 00 6c 00 65 00 } //01 00 
		$a_01_6 = {64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //01 00 
		$a_01_7 = {77 00 77 00 77 00 2e 00 62 00 69 00 74 00 64 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 2e 00 } //01 00 
		$a_01_8 = {77 00 77 00 77 00 2e 00 6e 00 6f 00 64 00 33 00 32 00 2e 00 } //01 00 
		$a_01_9 = {77 00 77 00 77 00 2e 00 6e 00 6f 00 72 00 6d 00 61 00 6e 00 2e 00 } //01 00 
		$a_01_10 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 } //01 00 
		$a_01_11 = {2e 00 70 00 64 00 66 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_12 = {6e 00 65 00 74 00 20 00 75 00 73 00 65 00 72 00 20 00 61 00 64 00 6d 00 69 00 6e 00 69 00 73 00 74 00 72 00 61 00 74 00 6f 00 72 00 } //01 00 
		$a_01_13 = {2e 00 65 00 78 00 65 00 5c 00 50 00 65 00 72 00 73 00 69 00 73 00 74 00 65 00 6e 00 74 00 48 00 61 00 6e 00 64 00 6c 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}