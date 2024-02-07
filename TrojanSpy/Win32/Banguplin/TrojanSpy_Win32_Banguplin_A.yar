
rule TrojanSpy_Win32_Banguplin_A{
	meta:
		description = "TrojanSpy:Win32/Banguplin.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {34 00 38 00 45 00 38 00 37 00 37 00 38 00 45 00 41 00 36 00 35 00 36 00 38 00 31 00 42 00 35 00 34 00 45 00 46 00 38 00 31 00 32 00 42 00 31 00 32 00 31 00 44 00 36 00 36 00 35 00 39 00 32 00 35 00 31 00 33 00 39 00 39 00 46 00 34 00 30 00 45 00 30 00 } //02 00  48E8778EA65681B54EF812B121D6659251399F40E0
		$a_01_1 = {42 00 35 00 41 00 43 00 32 00 32 00 43 00 35 00 37 00 41 00 41 00 39 00 35 00 42 00 38 00 34 00 41 00 44 00 38 00 45 00 45 00 36 00 36 00 37 00 45 00 31 00 31 00 42 00 44 00 30 00 30 00 35 00 33 00 38 00 45 00 43 00 } //01 00  B5AC22C57AA95B84AD8EE667E11BD00538EC
		$a_01_2 = {41 00 45 00 41 00 37 00 32 00 45 00 43 00 45 00 36 00 37 00 39 00 36 00 42 00 38 00 39 00 43 00 38 00 41 00 42 00 31 00 31 00 31 00 42 00 38 00 31 00 30 00 32 00 30 00 } //01 00  AEA72ECE6796B89C8AB111B81020
		$a_01_3 = {46 00 30 00 36 00 35 00 46 00 37 00 33 00 39 00 43 00 46 00 37 00 33 00 41 00 31 00 35 00 45 00 } //01 00  F065F739CF73A15E
		$a_01_4 = {41 00 37 00 35 00 44 00 38 00 36 00 41 00 35 00 35 00 45 00 38 00 39 00 42 00 30 00 39 00 41 00 41 00 42 00 35 00 42 00 46 00 32 00 } //01 00  A75D86A55E89B09AAB5BF2
		$a_01_5 = {33 00 31 00 32 00 41 00 35 00 35 00 46 00 36 00 31 00 32 00 32 00 32 00 32 00 41 00 33 00 37 00 44 00 30 00 } //01 00  312A55F612222A37D0
		$a_01_6 = {31 00 43 00 44 00 31 00 30 00 44 00 32 00 35 00 44 00 42 00 30 00 31 00 36 00 43 00 39 00 34 00 35 00 34 00 38 00 33 00 } //01 00  1CD10D25DB016C945483
		$a_01_7 = {36 00 46 00 39 00 30 00 45 00 41 00 36 00 38 00 46 00 38 00 37 00 38 00 } //00 00  6F90EA68F878
		$a_00_8 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}