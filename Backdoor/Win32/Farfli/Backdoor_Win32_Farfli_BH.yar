
rule Backdoor_Win32_Farfli_BH{
	meta:
		description = "Backdoor:Win32/Farfli.BH,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 89 44 24 44 c6 44 24 39 65 c6 44 24 3c 79 c6 44 24 40 6d ff d5 8b 35 } //01 00 
		$a_01_1 = {89 4c 24 24 88 54 24 28 c6 44 24 1c 47 c6 44 24 1f 55 c6 44 24 23 4e ff d5 50 ff d6 } //01 00 
		$a_01_2 = {c6 44 24 2c 72 c6 44 24 2e 6f c6 44 24 2f 74 ff d3 56 ff 15 } //01 00 
		$a_01_3 = {c6 44 24 11 4d c6 44 24 12 42 c6 44 24 14 30 c6 44 24 16 6d c6 44 24 17 62 0f 84 c3 } //01 00 
		$a_01_4 = {c6 44 24 18 47 c6 44 24 1a 74 c6 44 24 1b 55 c6 44 24 1f 4e c6 44 24 21 6d ff d5 } //01 00 
		$a_01_5 = {c6 44 24 54 47 c6 44 24 56 74 c6 44 24 57 56 c6 44 24 5b 6d c6 44 24 5d 49 c6 44 24 60 6f c6 44 24 64 74 ff d5 } //00 00 
		$a_00_6 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}