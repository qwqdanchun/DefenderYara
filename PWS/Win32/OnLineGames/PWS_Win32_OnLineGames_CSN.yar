
rule PWS_Win32_OnLineGames_CSN{
	meta:
		description = "PWS:Win32/OnLineGames.CSN,SIGNATURE_TYPE_PEHSTR,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 53 00 76 00 63 00 68 00 6f 00 73 00 74 00 } //01 00 
		$a_01_1 = {25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 20 00 2d 00 6b 00 20 00 6e 00 65 00 74 00 73 00 76 00 63 00 73 00 } //01 00 
		$a_01_2 = {25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 7a 00 63 00 73 00 76 00 62 00 63 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_3 = {77 00 6f 00 77 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {53 00 65 00 44 00 65 00 62 00 75 00 67 00 50 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 } //01 00 
		$a_01_5 = {53 00 65 00 72 00 76 00 69 00 63 00 65 00 44 00 6c 00 6c 00 } //01 00 
		$a_01_6 = {53 00 65 00 72 00 76 00 69 00 63 00 65 00 4d 00 61 00 69 00 6e 00 } //01 00 
		$a_01_7 = {57 00 5a 00 43 00 53 00 56 00 43 00 } //00 00 
	condition:
		any of ($a_*)
 
}