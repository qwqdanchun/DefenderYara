
rule Worm_Win32_Regul_C{
	meta:
		description = "Worm:Win32/Regul.C,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 54 65 6d 70 50 61 74 68 41 } //01 00 
		$a_01_1 = {2e 63 6e 2f 75 6c 2e 68 74 6d 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_2 = {00 2e 63 6f 6d 2f 75 6c 2e 68 74 6d 00 } //01 00 
		$a_01_3 = {65 78 70 6c 6f 72 65 72 20 00 2e 65 78 65 00 72 65 73 74 61 72 74 00 72 65 67 } //01 00 
		$a_01_4 = {3a 5c 61 75 74 6f 72 75 6e 2e 69 6e 66 00 6f 70 65 6e 00 41 75 74 6f 52 75 6e } //01 00 
		$a_01_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 5c 00 4d 30 38 30 38 30 31 00 4e 6f 74 65 70 61 64 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}