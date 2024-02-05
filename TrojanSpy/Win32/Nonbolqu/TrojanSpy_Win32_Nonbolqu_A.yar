
rule TrojanSpy_Win32_Nonbolqu_A{
	meta:
		description = "TrojanSpy:Win32/Nonbolqu.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 37 00 43 00 39 00 36 00 44 00 42 00 30 00 35 00 41 00 46 00 45 00 35 00 45 00 38 00 38 00 42 00 30 00 45 00 32 00 31 00 42 00 44 00 37 00 30 00 45 00 34 00 33 00 38 00 32 00 41 00 33 00 34 00 30 00 38 00 37 00 } //01 00 
		$a_01_1 = {32 00 41 00 32 00 38 00 43 00 32 00 36 00 33 00 38 00 36 00 43 00 30 00 31 00 35 00 37 00 45 00 38 00 44 00 43 00 37 00 30 00 39 00 33 00 43 00 45 00 46 00 36 00 43 00 } //01 00 
		$a_01_2 = {42 00 45 00 37 00 31 00 42 00 30 00 34 00 33 00 46 00 34 00 } //01 00 
		$a_01_3 = {44 00 37 00 36 00 30 00 39 00 34 00 35 00 34 00 46 00 36 00 } //01 00 
		$a_01_4 = {33 00 33 00 43 00 43 00 37 00 42 00 42 00 38 00 35 00 30 00 38 00 44 00 39 00 45 00 34 00 33 00 46 00 42 00 36 00 46 00 } //01 00 
		$a_01_5 = {33 00 43 00 43 00 37 00 37 00 46 00 46 00 43 00 32 00 43 00 41 00 39 00 32 00 34 00 } //01 00 
		$a_01_6 = {35 00 45 00 39 00 39 00 41 00 46 00 34 00 46 00 46 00 45 00 35 00 43 00 38 00 44 00 34 00 42 00 45 00 30 00 36 00 36 00 46 00 43 00 32 00 44 00 } //01 00 
		$a_01_7 = {45 00 32 00 36 00 30 00 39 00 30 00 35 00 32 00 46 00 37 00 36 00 43 00 45 00 36 00 30 00 31 00 32 00 45 00 41 00 45 00 32 00 30 00 43 00 42 00 41 00 44 00 31 00 38 00 42 00 37 00 37 00 33 00 41 00 31 00 42 00 43 00 45 00 35 00 36 00 34 00 43 00 45 00 37 00 32 00 38 00 34 00 39 00 30 00 33 00 32 00 41 00 30 00 34 00 36 00 46 00 36 00 32 00 41 00 44 00 33 00 31 00 41 00 } //01 00 
		$a_01_8 = {39 00 35 00 39 00 31 00 39 00 34 00 45 00 35 00 30 00 32 00 34 00 33 00 38 00 36 00 41 00 43 00 36 00 43 00 } //01 00 
		$a_01_9 = {34 00 42 00 46 00 34 00 33 00 32 00 43 00 32 00 36 00 42 00 45 00 32 00 36 00 35 00 38 00 33 00 42 00 45 00 } //01 00 
		$a_01_10 = {30 00 34 00 33 00 45 00 43 00 41 00 36 00 35 00 39 00 31 00 43 00 30 00 44 00 44 00 30 00 45 00 33 00 31 00 39 00 35 00 } //01 00 
		$a_01_11 = {46 00 41 00 30 00 37 00 33 00 44 00 46 00 37 00 33 00 43 00 41 00 46 00 46 00 43 00 32 00 39 00 43 00 30 00 30 00 32 00 } //01 00 
		$a_01_12 = {33 00 45 00 45 00 38 00 31 00 46 00 44 00 43 00 31 00 44 00 34 00 43 00 38 00 39 00 41 00 36 00 34 00 30 00 38 00 30 00 } //01 00 
		$a_01_13 = {37 00 30 00 42 00 41 00 37 00 31 00 38 00 35 00 42 00 42 00 31 00 33 00 34 00 34 00 45 00 36 00 } //01 00 
		$a_01_14 = {43 00 37 00 36 00 32 00 39 00 45 00 35 00 33 00 38 00 45 00 43 00 46 00 30 00 31 00 } //01 00 
		$a_01_15 = {32 00 33 00 44 00 33 00 31 00 33 00 32 00 35 00 44 00 46 00 36 00 37 00 45 00 30 00 30 00 31 00 33 00 39 00 39 00 41 00 46 00 39 00 36 00 46 00 } //01 00 
		$a_01_16 = {34 00 39 00 43 00 42 00 36 00 46 00 38 00 34 00 42 00 46 00 30 00 30 00 35 00 45 00 38 00 38 00 45 00 34 00 36 00 41 00 46 00 43 00 33 00 36 00 31 00 30 00 36 00 30 00 46 00 34 00 30 00 44 00 33 00 32 00 39 00 33 00 42 00 39 00 31 00 31 00 33 00 30 00 44 00 32 00 36 00 37 00 46 00 46 00 35 00 39 00 46 00 43 00 } //00 00 
		$a_00_17 = {5d 04 00 00 } //a0 29 
	condition:
		any of ($a_*)
 
}