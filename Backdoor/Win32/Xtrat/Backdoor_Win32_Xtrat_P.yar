
rule Backdoor_Win32_Xtrat_P{
	meta:
		description = "Backdoor:Win32/Xtrat.P,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 00 65 00 67 00 20 00 61 00 64 00 64 00 20 00 22 00 48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 45 00 72 00 72 00 6f 00 72 00 20 00 52 00 65 00 70 00 6f 00 72 00 74 00 69 00 6e 00 67 00 22 00 20 00 2f 00 76 00 20 00 44 00 6f 00 6e 00 74 00 53 00 68 00 6f 00 77 00 55 00 49 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 31 00 20 00 2f 00 66 00 } //01 00 
		$a_01_1 = {75 00 70 00 6e 00 70 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {56 42 35 20 53 65 74 75 70 20 54 6f 6f 6c 6b 69 74 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}