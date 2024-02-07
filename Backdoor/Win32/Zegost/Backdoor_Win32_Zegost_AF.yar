
rule Backdoor_Win32_Zegost_AF{
	meta:
		description = "Backdoor:Win32/Zegost.AF,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0a 00 00 02 00 "
		
	strings :
		$a_03_0 = {5c 57 69 6e 43 6d 64 65 72 00 90 02 05 53 79 73 74 65 6d 00 00 90 02 05 53 65 63 75 72 69 74 79 00 90 00 } //01 00 
		$a_01_1 = {4e 65 74 53 75 62 4b 65 79 00 } //02 00  敎却扵敋y
		$a_01_2 = {5c 78 68 6a 6d 6a 6a 2e 64 61 74 00 } //01 00 
		$a_01_3 = {47 6c 6f 62 61 6c 5c 4e 65 74 5f 25 64 } //01 00  Global\Net_%d
		$a_01_4 = {77 69 73 74 65 6e 00 } //01 00 
		$a_00_5 = {48 74 74 70 2f 31 2e 31 20 34 30 33 20 46 6f 72 62 69 64 64 65 6e } //01 00  Http/1.1 403 Forbidden
		$a_00_6 = {70 62 6b 5c 72 61 73 70 68 6f 6e 65 2e 70 62 6b } //02 00  pbk\rasphone.pbk
		$a_03_7 = {6a 01 6a 67 68 90 01 04 e8 90 01 04 83 c4 0c 50 68 90 01 04 ff 15 90 00 } //04 00 
		$a_01_8 = {47 c6 44 24 0d 68 c6 44 24 0e 30 c6 44 24 0f 73 } //01 00 
		$a_01_9 = {33 c6 44 24 33 32 c6 44 24 34 2e c6 44 24 35 64 } //00 00 
	condition:
		any of ($a_*)
 
}