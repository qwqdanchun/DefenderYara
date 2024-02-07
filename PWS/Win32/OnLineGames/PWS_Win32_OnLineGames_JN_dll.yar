
rule PWS_Win32_OnLineGames_JN_dll{
	meta:
		description = "PWS:Win32/OnLineGames.JN!dll,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {3f 61 3d 00 26 49 6d 67 55 70 3d 00 62 79 73 75 6e 3d 00 00 } //01 00 
		$a_01_1 = {70 40 25 30 00 25 00 61 69 6f 6e 2e 62 69 6e 00 5c 62 79 7a 79 68 2e 65 78 65 00 } //01 00 
		$a_01_2 = {26 66 61 6e 68 75 69 62 61 6f 3d 00 3f 63 3d 71 26 69 3d 00 31 00 00 } //01 00 
		$a_01_3 = {42 6c 61 63 6b 4d 6f 6f 6e 2e 64 6c 6c } //01 00  BlackMoon.dll
		$a_01_4 = {58 6e 56 69 65 77 00 56 69 65 77 65 72 00 50 69 63 61 73 61 00 46 61 73 74 53 74 6f 6e 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}