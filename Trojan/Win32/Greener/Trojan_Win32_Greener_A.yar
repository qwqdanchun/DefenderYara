
rule Trojan_Win32_Greener_A{
	meta:
		description = "Trojan:Win32/Greener.A,SIGNATURE_TYPE_PEHSTR,ffffffd4 00 ffffffd4 00 10 00 00 64 00 "
		
	strings :
		$a_01_0 = {4d 65 74 68 43 61 6c 6c 45 6e 67 69 6e 65 } //64 00 
		$a_01_1 = {5f 5f 76 62 61 45 78 63 65 70 74 48 61 6e 64 6c 65 72 } //03 00 
		$a_01_2 = {47 00 4c 00 4f 00 42 00 41 00 4c 00 20 00 57 00 41 00 52 00 4d 00 49 00 4e 00 47 00 3a 00 20 00 } //03 00 
		$a_01_3 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 20 00 2d 00 66 00 20 00 2d 00 74 00 20 00 30 00 30 00 } //03 00 
		$a_01_4 = {44 00 61 00 6b 00 69 00 6c 00 61 00 } //06 00 
		$a_01_5 = {57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 20 00 55 00 4c 00 54 00 49 00 4d 00 41 00 5c 00 53 00 4f 00 55 00 52 00 43 00 45 00 20 00 43 00 4f 00 44 00 45 00 5c 00 56 00 42 00 36 00 5c 00 45 00 6c 00 79 00 73 00 69 00 75 00 6d 00 5c 00 } //01 00 
		$a_01_6 = {2a 00 70 00 61 00 6e 00 64 00 61 00 2a 00 } //01 00 
		$a_01_7 = {2a 00 77 00 73 00 63 00 72 00 69 00 70 00 74 00 2a 00 } //01 00 
		$a_01_8 = {64 00 6f 00 6f 00 6d 00 72 00 69 00 64 00 65 00 72 00 7a 00 72 00 75 00 6c 00 65 00 73 00 } //01 00 
		$a_01_9 = {69 00 68 00 61 00 74 00 65 00 79 00 6f 00 75 00 } //01 00 
		$a_01_10 = {74 00 2e 00 61 00 2e 00 64 00 } //01 00 
		$a_01_11 = {64 00 6c 00 6c 00 68 00 30 00 73 00 74 00 } //01 00 
		$a_01_12 = {6b 00 72 00 69 00 73 00 74 00 75 00 73 00 } //01 00 
		$a_01_13 = {68 00 65 00 6e 00 74 00 61 00 69 00 } //01 00 
		$a_01_14 = {73 00 61 00 76 00 65 00 65 00 61 00 72 00 74 00 68 00 } //01 00 
		$a_01_15 = {45 6f 6e 46 4c 75 78 } //00 00 
	condition:
		any of ($a_*)
 
}