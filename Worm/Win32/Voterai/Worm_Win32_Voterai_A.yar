
rule Worm_Win32_Voterai_A{
	meta:
		description = "Worm:Win32/Voterai.A,SIGNATURE_TYPE_PEHSTR,3f 00 3f 00 0c 00 00 0a 00 "
		
	strings :
		$a_01_0 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 } //0a 00 
		$a_01_1 = {53 00 65 00 53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 50 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 } //0a 00 
		$a_01_2 = {6d 73 76 62 76 6d 36 30 2e 64 6c 6c } //0a 00 
		$a_01_3 = {68 00 68 00 3a 00 6d 00 6d 00 3a 00 73 00 73 00 20 00 41 00 4d 00 50 00 4d 00 } //0a 00 
		$a_01_4 = {3a 00 31 00 30 00 20 00 41 00 4d 00 } //0a 00 
		$a_01_5 = {3a 00 31 00 30 00 20 00 50 00 4d 00 } //01 00 
		$a_01_6 = {4b 00 41 00 53 00 50 00 } //01 00 
		$a_01_7 = {4e 00 4f 00 44 00 33 00 32 00 } //01 00 
		$a_01_8 = {4e 00 4f 00 52 00 54 00 4f 00 4e 00 } //01 00 
		$a_01_9 = {4d 00 43 00 41 00 46 00 45 00 45 00 } //01 00 
		$a_01_10 = {4e 00 45 00 4d 00 45 00 } //01 00 
		$a_01_11 = {53 00 59 00 4d 00 41 00 4e 00 } //00 00 
	condition:
		any of ($a_*)
 
}