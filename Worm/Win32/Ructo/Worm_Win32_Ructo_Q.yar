
rule Worm_Win32_Ructo_Q{
	meta:
		description = "Worm:Win32/Ructo.Q,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_02_0 = {49 73 57 65 62 43 6f 6e 6e 65 63 74 65 64 90 02 05 76 65 72 69 66 69 63 61 61 72 71 75 69 76 6f 90 02 05 56 42 52 65 67 53 76 72 33 32 90 02 05 52 65 67 69 73 74 65 72 43 6f 6d 70 6f 6e 65 6e 74 90 00 } //02 00 
		$a_02_1 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 90 02 05 47 65 74 50 52 4f 47 52 41 4d 46 49 4c 45 53 90 00 } //02 00 
		$a_02_2 = {4c 00 6f 00 77 00 52 00 69 00 73 00 6b 00 46 00 69 00 6c 00 65 00 54 00 79 00 70 00 65 00 73 00 90 02 10 2e 00 7a 00 69 00 70 00 3b 00 2e 00 72 00 61 00 72 00 3b 00 2e 00 6e 00 66 00 6f 00 3b 00 2e 00 90 00 } //01 00 
		$a_02_3 = {53 00 61 00 76 00 65 00 5a 00 6f 00 6e 00 65 00 49 00 6e 00 66 00 6f 00 72 00 6d 00 61 00 74 00 69 00 6f 00 6e 00 90 02 0a 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 90 00 } //01 00 
		$a_00_4 = {6d 00 70 00 6c 00 61 00 79 00 65 00 72 00 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}