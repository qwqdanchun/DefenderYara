
rule Ransom_MSIL_Polar_PB_MTB{
	meta:
		description = "Ransom:MSIL/Polar.PB!MTB,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 45 53 5f 45 6e 44 65 63 72 79 70 74 6f 72 2e 42 61 73 65 6d 65 6e 74 } //01 00 
		$a_01_1 = {45 6e 63 6f 64 65 2e 65 78 65 } //01 00 
		$a_01_2 = {4b 65 79 53 69 7a 65 } //01 00 
		$a_01_3 = {4b 65 79 45 78 70 61 6e 73 69 6f 6e } //01 00 
		$a_01_4 = {44 75 6d 70 4b 65 79 } //01 00 
		$a_01_5 = {52 53 41 45 6e 63 72 79 70 74 } //01 00 
		$a_01_6 = {63 68 61 6e 67 65 42 61 63 6b 50 69 63 74 72 75 65 } //01 00 
		$a_01_7 = {52 53 41 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //02 00 
		$a_01_8 = {77 00 6d 00 69 00 63 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 63 00 6f 00 70 00 79 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 } //02 00 
		$a_01_9 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 62 00 61 00 63 00 6b 00 75 00 70 00 } //02 00 
		$a_01_10 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 74 00 61 00 74 00 65 00 62 00 61 00 63 00 6b 00 75 00 70 00 20 00 2d 00 6b 00 65 00 65 00 70 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 73 00 3a 00 30 00 } //02 00 
		$a_01_11 = {62 00 63 00 64 00 65 00 64 00 69 00 74 00 20 00 2f 00 73 00 65 00 74 00 20 00 7b 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 7d 00 20 00 62 00 6f 00 6f 00 74 00 73 00 74 00 61 00 74 00 75 00 73 00 70 00 6f 00 6c 00 69 00 63 00 79 00 20 00 69 00 67 00 6e 00 6f 00 72 00 65 00 61 00 6c 00 6c 00 66 00 61 00 69 00 6c 00 75 00 72 00 65 00 73 00 } //02 00 
		$a_01_12 = {77 00 65 00 76 00 74 00 75 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 20 00 63 00 6c 00 65 00 61 00 72 00 2d 00 6c 00 6f 00 67 00 20 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //02 00 
		$a_01_13 = {77 00 65 00 76 00 74 00 75 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 20 00 63 00 6c 00 65 00 61 00 72 00 2d 00 6c 00 6f 00 67 00 20 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 } //02 00 
		$a_01_14 = {77 00 65 00 76 00 74 00 75 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 20 00 63 00 6c 00 65 00 61 00 72 00 2d 00 6c 00 6f 00 67 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //02 00 
		$a_01_15 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 63 00 61 00 74 00 61 00 6c 00 6f 00 67 00 20 00 2d 00 71 00 75 00 69 00 65 00 74 00 } //02 00 
		$a_01_16 = {77 00 62 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 79 00 73 00 74 00 65 00 6d 00 73 00 74 00 61 00 74 00 65 00 62 00 61 00 63 00 6b 00 75 00 70 00 } //02 00 
		$a_01_17 = {2e 6c 6f 63 6b 65 64 } //02 00 
		$a_01_18 = {2e 63 72 79 70 74 64 } //04 00 
		$a_01_19 = {5c 77 61 6e 61 5c 52 61 6e 73 6f 6d 77 61 72 65 5f 41 4c 4c 5f 65 6e 63 6f 64 65 5c 64 69 72 5f 66 69 6c 65 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c 45 6e 63 6f 64 65 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}