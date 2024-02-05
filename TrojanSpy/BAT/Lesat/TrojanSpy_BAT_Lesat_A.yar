
rule TrojanSpy_BAT_Lesat_A{
	meta:
		description = "TrojanSpy:BAT/Lesat.A,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 63 72 65 65 6e 25 } //01 00 
		$a_01_1 = {25 77 65 62 63 61 6d 25 } //01 00 
		$a_01_2 = {25 61 6e 74 69 73 25 } //01 00 
		$a_01_3 = {25 70 65 72 73 69 73 74 61 6e 63 65 25 } //01 00 
		$a_01_4 = {25 4b 69 6c 6c 65 72 25 } //01 00 
		$a_01_5 = {25 64 69 73 61 62 6c 65 66 6f 6c 64 65 72 25 } //01 00 
		$a_01_6 = {25 64 69 73 61 62 6c 65 6d 73 63 6f 6e 25 } //01 00 
		$a_01_7 = {25 64 69 73 61 62 6c 65 43 50 25 } //01 00 
		$a_01_8 = {25 64 69 73 61 62 6c 65 53 52 25 } //01 00 
		$a_01_9 = {25 64 69 73 61 62 6c 65 72 65 67 25 } //01 00 
		$a_01_10 = {25 64 69 73 61 62 6c 65 72 75 6e 25 } //01 00 
		$a_01_11 = {25 64 69 73 61 62 6c 65 63 6d 64 25 } //01 00 
		$a_01_12 = {25 64 69 73 61 62 6c 65 74 61 73 6b 25 } //01 00 
		$a_01_13 = {25 64 69 73 61 62 6c 65 75 61 63 25 } //01 00 
		$a_01_14 = {25 64 6f 77 6e 6c 6f 61 64 65 72 25 } //00 00 
		$a_01_15 = {00 61 2f 02 } //00 06 
	condition:
		any of ($a_*)
 
}
rule TrojanSpy_BAT_Lesat_A_2{
	meta:
		description = "TrojanSpy:BAT/Lesat.A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 74 00 65 00 61 00 6c 00 5f 00 43 00 68 00 72 00 6f 00 6d 00 65 00 } //01 00 
		$a_01_1 = {53 00 74 00 65 00 61 00 6c 00 5f 00 43 00 6f 00 72 00 65 00 46 00 54 00 50 00 } //01 00 
		$a_01_2 = {53 00 74 00 65 00 61 00 6c 00 5f 00 44 00 79 00 6e 00 44 00 4e 00 53 00 } //01 00 
		$a_01_3 = {53 00 74 00 65 00 61 00 6c 00 5f 00 46 00 54 00 50 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 65 00 } //01 00 
		$a_01_4 = {53 00 74 00 65 00 61 00 6c 00 5f 00 46 00 69 00 6c 00 65 00 5a 00 69 00 6c 00 6c 00 61 00 } //01 00 
		$a_01_5 = {53 00 74 00 65 00 61 00 6c 00 5f 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 } //01 00 
		$a_01_6 = {53 00 74 00 65 00 61 00 6c 00 5f 00 46 00 6c 00 61 00 73 00 68 00 46 00 58 00 50 00 } //01 00 
		$a_01_7 = {53 00 74 00 65 00 61 00 6c 00 5f 00 49 00 44 00 4d 00 } //01 00 
		$a_01_8 = {53 00 74 00 65 00 61 00 6c 00 5f 00 49 00 45 00 } //01 00 
		$a_01_9 = {53 00 74 00 65 00 61 00 6c 00 5f 00 49 00 4d 00 56 00 55 00 } //01 00 
		$a_01_10 = {53 00 74 00 65 00 61 00 6c 00 5f 00 4a 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 65 00 72 00 } //01 00 
		$a_01_11 = {53 00 74 00 65 00 61 00 6c 00 5f 00 4b 00 65 00 79 00 52 00 65 00 63 00 } //01 00 
		$a_01_12 = {53 00 74 00 65 00 61 00 6c 00 5f 00 4d 00 53 00 4e 00 } //01 00 
		$a_01_13 = {53 00 74 00 65 00 61 00 6c 00 5f 00 4e 00 4f 00 5f 00 49 00 50 00 } //01 00 
		$a_01_14 = {53 00 74 00 65 00 61 00 6c 00 5f 00 4f 00 70 00 65 00 72 00 61 00 } //01 00 
		$a_01_15 = {53 00 74 00 65 00 61 00 6c 00 5f 00 50 00 61 00 6c 00 74 00 61 00 6c 00 6b 00 } //01 00 
		$a_01_16 = {53 00 74 00 65 00 61 00 6c 00 5f 00 50 00 69 00 64 00 67 00 69 00 6e 00 } //01 00 
		$a_01_17 = {53 00 74 00 65 00 61 00 6c 00 5f 00 53 00 6d 00 61 00 72 00 74 00 46 00 54 00 50 00 } //01 00 
		$a_01_18 = {53 00 74 00 65 00 61 00 6c 00 5f 00 53 00 74 00 65 00 61 00 6d 00 } //01 00 
		$a_01_19 = {53 00 74 00 65 00 61 00 6c 00 5f 00 59 00 61 00 68 00 6f 00 6f 00 } //00 00 
		$a_01_20 = {00 5d } //04 00 
	condition:
		any of ($a_*)
 
}