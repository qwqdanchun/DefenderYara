
rule Trojan_Win32_Virtumonde_O{
	meta:
		description = "Trojan:Win32/Virtumonde.O,SIGNATURE_TYPE_PEHSTR,1f 00 1e 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {56 4d 44 6c 6c 2e 64 6c 6c 00 66 6f 72 6b 00 66 6f 72 6b 6f 6e 63 65 } //0a 00 
		$a_01_1 = {4c 00 6f 00 63 00 61 00 6c 00 5f 00 41 00 66 00 53 00 79 00 73 00 55 00 70 00 64 00 } //0a 00 
		$a_01_2 = {4c 00 6f 00 63 00 61 00 6c 00 5f 00 41 00 66 00 4d 00 61 00 69 00 6e 00 4d 00 75 00 74 00 65 00 78 00 } //01 00 
		$a_01_3 = {77 77 77 2e 74 72 61 66 66 69 63 2d 63 6f 6e 76 65 72 74 65 72 2e 63 6f 6d } //01 00 
		$a_01_4 = {77 00 77 00 77 00 2e 00 37 00 61 00 64 00 70 00 6f 00 77 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Virtumonde_O_2{
	meta:
		description = "Trojan:Win32/Virtumonde.O,SIGNATURE_TYPE_PEHSTR,16 00 14 00 07 00 00 02 00 "
		
	strings :
		$a_01_0 = {44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 00 72 65 61 6c 67 6f 00 72 65 61 6c 73 65 74 } //02 00 
		$a_01_1 = {56 4d 44 6c 6c 2e 64 6c 6c 00 66 6f 72 6b 00 66 6f 72 6b 6f 6e 63 65 } //02 00 
		$a_01_2 = {56 4d 44 6c 6c 2e 64 6c 6c 00 73 69 74 79 70 00 73 69 74 79 70 6e 6f 77 } //01 00 
		$a_01_3 = {2e 64 6c 6c 00 61 00 62 } //01 00 
		$a_01_4 = {36 00 34 00 2e 00 32 00 33 00 35 00 2e 00 32 00 34 00 36 00 2e 00 31 00 35 00 30 00 3b 00 77 00 77 00 77 00 2e 00 7a 00 65 00 73 00 74 00 79 00 66 00 69 00 6e 00 64 00 } //0a 00 
		$a_01_5 = {70 00 3a 00 2f 00 2f 00 6d 00 61 00 6b 00 65 00 6e 00 6f 00 77 00 2e 00 6e 00 65 00 74 00 3a 00 38 00 30 00 29 00 } //0a 00 
		$a_01_6 = {36 00 36 00 2e 00 32 00 32 00 30 00 2e 00 31 00 37 00 2e 00 31 00 35 00 37 00 3b 00 73 00 65 00 61 00 72 00 63 00 68 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Virtumonde_O_3{
	meta:
		description = "Trojan:Win32/Virtumonde.O,SIGNATURE_TYPE_PEHSTR,3f 00 3f 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {3b 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 } //0a 00 
		$a_01_1 = {4c 00 6f 00 63 00 61 00 6c 00 5c 00 52 00 65 00 61 00 64 00 55 00 52 00 4c 00 4c 00 69 00 73 00 74 00 54 00 69 00 6d 00 65 00 72 00 } //0a 00 
		$a_01_2 = {4c 00 6f 00 63 00 61 00 6c 00 5f 00 41 00 66 00 53 00 79 00 73 00 55 00 70 00 64 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 54 00 69 00 6d 00 65 00 72 00 } //0a 00 
		$a_01_3 = {50 00 72 00 6f 00 74 00 65 00 63 00 74 00 69 00 6f 00 6e 00 20 00 74 00 68 00 72 00 65 00 61 00 64 00 } //0a 00 
		$a_01_4 = {52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 20 00 74 00 68 00 72 00 65 00 61 00 64 00 } //0a 00 
		$a_01_5 = {53 00 74 00 6f 00 70 00 41 00 6e 00 64 00 52 00 65 00 63 00 6f 00 76 00 65 00 72 00 20 00 74 00 68 00 72 00 65 00 61 00 64 00 } //01 00 
		$a_01_6 = {2e 00 74 00 61 00 72 00 67 00 65 00 74 00 6e 00 65 00 74 00 2e 00 63 00 6f 00 6d 00 3b 00 } //01 00 
		$a_01_7 = {77 00 77 00 77 00 2e 00 65 00 6d 00 61 00 72 00 6b 00 65 00 74 00 6d 00 61 00 6b 00 65 00 72 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_8 = {61 00 7a 00 6f 00 6f 00 67 00 6c 00 65 00 61 00 64 00 73 00 2e 00 63 00 6f 00 6d 00 3b 00 } //01 00 
		$a_01_9 = {77 00 77 00 77 00 2e 00 74 00 72 00 61 00 66 00 66 00 69 00 63 00 2d 00 63 00 6f 00 6e 00 76 00 65 00 72 00 74 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 3b 00 } //01 00 
		$a_01_10 = {69 00 6e 00 66 00 69 00 6e 00 69 00 74 00 65 00 2d 00 61 00 64 00 73 00 2e 00 63 00 6f 00 6d 00 3b 00 } //01 00 
		$a_01_11 = {77 00 77 00 77 00 2e 00 37 00 61 00 64 00 70 00 6f 00 77 00 65 00 72 00 2e 00 63 00 6f 00 6d 00 3b 00 } //00 00 
	condition:
		any of ($a_*)
 
}