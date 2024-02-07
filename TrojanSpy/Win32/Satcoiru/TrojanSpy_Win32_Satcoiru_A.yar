
rule TrojanSpy_Win32_Satcoiru_A{
	meta:
		description = "TrojanSpy:Win32/Satcoiru.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {30 00 30 00 32 00 30 00 35 00 46 00 34 00 37 00 34 00 31 00 34 00 34 00 35 00 36 00 35 00 32 00 35 00 39 00 32 00 42 00 34 00 33 00 32 00 32 00 } //04 00  00205F4741445652592B4322
		$a_01_1 = {31 00 38 00 35 00 39 00 35 00 43 00 35 00 31 00 35 00 33 00 34 00 46 00 31 00 46 00 34 00 36 00 32 00 41 00 34 00 30 00 } //02 00  18595C51534F1F462A40
		$a_01_2 = {39 00 30 00 36 00 33 00 37 00 44 00 37 00 33 00 36 00 36 00 36 00 30 00 30 00 32 00 36 00 34 00 30 00 33 00 36 00 43 00 37 00 43 00 35 00 39 00 32 00 30 00 34 00 33 00 35 00 46 00 34 00 33 00 35 00 36 00 35 00 36 00 } //02 00  90637D7366600264036C7C5920435F435656
		$a_01_3 = {30 00 30 00 32 00 30 00 35 00 44 00 35 00 33 00 35 00 36 00 35 00 37 00 35 00 33 00 35 00 35 00 34 00 34 00 32 00 37 00 34 00 33 00 33 00 30 00 } //02 00  00205D535657535544274330
		$a_01_4 = {30 00 30 00 32 00 34 00 37 00 39 00 35 00 43 00 35 00 36 00 35 00 41 00 34 00 32 00 35 00 38 00 34 00 34 00 30 00 33 00 34 00 36 00 32 00 41 00 34 00 35 00 35 00 45 00 } //02 00  0024795C565A42584403462A455E
		$a_01_5 = {30 00 30 00 32 00 38 00 35 00 45 00 35 00 44 00 35 00 38 00 35 00 33 00 35 00 35 00 35 00 30 00 35 00 38 00 32 00 31 00 35 00 46 00 32 00 37 00 35 00 37 00 35 00 35 00 35 00 39 00 34 00 35 00 } //00 00  00285E5D5853555058215F2757555945
	condition:
		any of ($a_*)
 
}