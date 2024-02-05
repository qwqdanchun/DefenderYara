
rule PWS_Win32_OnLineGames_CPM{
	meta:
		description = "PWS:Win32/OnLineGames.CPM,SIGNATURE_TYPE_PEHSTR_EXT,37 00 37 00 0a 00 00 0a 00 "
		
	strings :
		$a_00_0 = {6d 61 70 5c 38 38 58 36 30 30 2e 6e 6d 70 } //0a 00 
		$a_00_1 = {2f 63 20 64 65 6c 20 43 3a 5c } //0a 00 
		$a_00_2 = {00 57 69 6e 53 79 73 57 00 } //0a 00 
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //0a 00 
		$a_00_4 = {57 4c 2e 44 4c 4c } //01 00 
		$a_00_5 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //01 00 
		$a_01_6 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00 
		$a_00_7 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //01 00 
		$a_01_8 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_00_9 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //00 00 
	condition:
		any of ($a_*)
 
}