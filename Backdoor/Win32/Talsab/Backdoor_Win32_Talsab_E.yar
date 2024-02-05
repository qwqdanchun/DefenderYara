
rule Backdoor_Win32_Talsab_E{
	meta:
		description = "Backdoor:Win32/Talsab.E,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 74 6c 64 72 2e 64 6c 6c 00 } //01 00 
		$a_01_1 = {00 32 30 35 2e 32 35 31 2e 31 34 30 2e 00 } //01 00 
		$a_01_2 = {00 48 6f 73 74 3a 20 77 77 77 2e 00 } //01 00 
		$a_01_3 = {2f 31 73 74 65 6d 61 69 6c 2e 70 68 70 20 48 54 54 50 2f 31 2e 31 } //01 00 
		$a_01_4 = {5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 00 } //01 00 
		$a_01_5 = {64 65 6c 20 73 79 73 2e 62 61 74 } //00 00 
	condition:
		any of ($a_*)
 
}