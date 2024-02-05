
rule TrojanSpy_Win32_Bhoban_A{
	meta:
		description = "TrojanSpy:Win32/Bhoban.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0a 00 07 00 00 08 00 "
		
	strings :
		$a_01_0 = {35 00 44 00 34 00 32 00 34 00 31 00 34 00 35 00 34 00 36 00 30 00 45 00 31 00 41 00 31 00 39 00 35 00 34 00 35 00 } //04 00 
		$a_01_1 = {31 00 42 00 35 00 45 00 35 00 31 00 35 00 33 00 34 00 37 00 35 00 31 00 35 00 30 00 31 00 38 00 35 00 43 00 35 00 42 00 } //02 00 
		$a_01_2 = {35 00 30 00 34 00 32 00 31 00 35 00 37 00 30 00 34 00 42 00 34 00 38 00 35 00 44 00 35 00 39 00 34 00 41 00 35 00 44 00 34 00 31 00 36 00 41 00 36 00 36 00 35 00 30 00 34 00 36 00 34 00 37 00 35 00 34 00 34 00 37 00 } //02 00 
		$a_01_3 = {36 00 36 00 35 00 45 00 35 00 30 00 35 00 39 00 35 00 39 00 31 00 34 00 37 00 31 00 35 00 39 00 35 00 36 00 37 00 41 00 35 00 31 00 35 00 32 00 35 00 34 00 35 00 35 00 34 00 43 00 31 00 38 00 36 00 35 00 35 00 43 00 35 00 30 00 34 00 32 00 } //02 00 
		$a_01_4 = {36 00 32 00 37 00 42 00 36 00 41 00 37 00 44 00 36 00 31 00 37 00 39 00 37 00 39 00 36 00 39 00 37 00 32 00 37 00 30 00 36 00 37 00 37 00 37 00 37 00 33 00 37 00 43 00 37 00 44 00 37 00 42 00 36 00 37 00 } //02 00 
		$a_01_5 = {37 00 44 00 37 00 44 00 37 00 30 00 36 00 43 00 36 00 41 00 37 00 38 00 37 00 41 00 37 00 35 00 37 00 34 00 37 00 39 00 36 00 43 00 37 00 35 00 37 00 30 00 37 00 35 00 37 00 30 00 37 00 31 00 37 00 44 00 37 00 30 00 36 00 39 00 36 00 36 00 } //02 00 
		$a_01_6 = {31 00 41 00 34 00 32 00 34 00 37 00 35 00 34 00 34 00 43 00 30 00 36 00 31 00 42 00 34 00 32 00 34 00 44 00 34 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}