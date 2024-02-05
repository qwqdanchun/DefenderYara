
rule Trojan_Win32_Chaflicon_A{
	meta:
		description = "Trojan:Win32/Chaflicon.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0d 00 00 02 00 "
		
	strings :
		$a_01_0 = {34 43 45 45 32 35 44 42 30 42 33 37 32 33 31 43 30 31 32 39 44 38 30 38 } //02 00 
		$a_01_1 = {35 36 44 38 30 46 43 44 37 39 41 35 41 45 35 31 46 34 31 41 43 31 37 36 38 34 42 43 35 46 38 33 41 34 35 46 39 46 35 33 43 30 } //02 00 
		$a_01_2 = {41 46 34 41 43 39 35 37 44 46 37 45 38 41 39 35 39 31 39 34 39 30 41 45 34 44 44 30 36 46 39 43 } //02 00 
		$a_01_3 = {31 42 33 37 43 31 35 34 45 36 36 34 45 45 37 37 38 45 41 45 41 32 41 42 42 34 34 38 45 41 } //02 00 
		$a_01_4 = {39 43 42 36 34 39 43 42 35 39 45 34 36 46 46 37 30 46 31 32 31 45 32 46 33 41 43 33 36 45 } //02 00 
		$a_01_5 = {36 39 38 35 39 35 39 42 41 45 42 31 42 44 34 34 44 39 36 32 45 45 37 45 38 33 39 41 42 38 } //01 00 
		$a_01_6 = {30 32 31 43 32 43 33 30 33 39 43 43 35 42 46 41 30 42 32 34 } //01 00 
		$a_01_7 = {44 43 37 39 46 42 31 35 32 32 33 44 43 42 35 37 45 36 36 30 46 46 31 30 } //01 00 
		$a_01_8 = {33 35 44 31 35 43 46 35 30 31 31 39 32 31 33 41 43 35 36 46 } //01 00 
		$a_01_9 = {44 37 37 32 46 43 31 34 32 33 33 30 43 41 35 39 45 30 37 32 } //01 00 
		$a_01_10 = {37 31 38 44 39 37 41 45 42 39 34 32 43 41 35 37 45 31 37 33 } //01 00 
		$a_01_11 = {45 41 30 37 30 39 31 38 32 46 33 44 43 35 35 42 44 34 35 36 45 35 30 45 } //01 00 
		$a_01_12 = {31 36 33 30 33 41 43 43 35 44 45 41 37 39 39 38 39 36 42 46 } //00 00 
		$a_00_13 = {5d 04 00 } //00 38 
	condition:
		any of ($a_*)
 
}