
rule TrojanClicker_Win32_MiniGames_A{
	meta:
		description = "TrojanClicker:Win32/MiniGames.A,SIGNATURE_TYPE_PEHSTR,09 00 09 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {74 00 6e 00 3d 00 79 00 6f 00 75 00 32 00 30 00 30 00 30 00 } //02 00 
		$a_01_1 = {74 00 6e 00 3d 00 69 00 65 00 77 00 7a 00 } //02 00 
		$a_01_2 = {4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 55 00 52 00 4c 00 } //01 00 
		$a_01_3 = {4e 00 61 00 76 00 69 00 67 00 61 00 74 00 65 00 32 00 } //01 00 
		$a_01_4 = {26 00 73 00 74 00 72 00 74 00 74 00 57 00 69 00 6e 00 44 00 69 00 72 00 26 00 } //01 00 
		$a_01_5 = {6e 00 74 00 5c 00 33 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_6 = {5c 00 54 00 65 00 6e 00 63 00 65 00 6e 00 74 00 5c 00 73 00 6d 00 6d 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_7 = {5c 00 71 00 71 00 6d 00 75 00 73 00 69 00 63 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}