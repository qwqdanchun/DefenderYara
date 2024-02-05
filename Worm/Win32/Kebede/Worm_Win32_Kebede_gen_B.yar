
rule Worm_Win32_Kebede_gen_B{
	meta:
		description = "Worm:Win32/Kebede.gen!B,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 00 65 00 78 00 74 00 3c 00 2f 00 61 00 3e 00 } //01 00 
		$a_01_1 = {49 00 6d 00 6b 00 77 00 71 00 75 00 71 00 79 00 67 00 5c 00 52 00 76 00 7a 00 20 00 57 00 76 00 75 00 73 00 6e 00 67 00 75 00 5c 00 } //01 00 
		$a_01_2 = {6a 00 67 00 67 00 64 00 3a 00 2f 00 2f 00 } //01 00 
		$a_01_3 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 } //01 00 
		$a_01_4 = {50 00 72 00 6f 00 78 00 79 00 45 00 6e 00 61 00 62 00 6c 00 65 00 } //01 00 
		$a_01_5 = {55 00 76 00 78 00 77 00 6b 00 6a 00 } //01 00 
		$a_01_6 = {75 00 67 00 4c 00 78 00 69 00 76 00 3d 00 } //01 00 
		$a_01_7 = {2a 00 2e 00 72 00 76 00 7a 00 63 00 7a 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}