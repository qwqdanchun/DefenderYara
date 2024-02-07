
rule Backdoor_Win32_Tofsee_T{
	meta:
		description = "Backdoor:Win32/Tofsee.T,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b c7 99 f7 f9 6a 0a 04 30 88 06 8b c1 8b fa 99 59 f7 f9 46 8b c8 85 c9 75 e6 } //01 00 
		$a_03_1 = {80 3f 5b 75 2e 47 40 57 89 06 e8 90 01 04 59 89 45 fc eb 07 3c 39 90 00 } //01 00 
		$a_01_2 = {8b 7e 04 8d 87 88 00 00 00 c7 46 08 88 00 00 00 8b 5e 08 50 c7 46 0c 84 00 00 00 } //01 00 
		$a_01_3 = {8a 4c 06 14 80 f9 44 74 12 80 f9 51 74 0d } //01 00 
		$a_00_4 = {25 30 34 78 25 30 38 2e 38 6c 78 24 25 30 38 2e 38 6c 78 24 25 30 38 78 40 25 73 } //01 00  %04x%08.8lx$%08.8lx$%08x@%s
		$a_00_5 = {25 50 35 44 41 54 45 } //01 00  %P5DATE
		$a_00_6 = {25 46 52 4f 4d 5f 45 4d 41 49 4c } //00 00  %FROM_EMAIL
	condition:
		any of ($a_*)
 
}