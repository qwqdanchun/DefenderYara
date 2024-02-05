
rule PWS_Win32_OnLineGames_MO{
	meta:
		description = "PWS:Win32/OnLineGames.MO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 b8 0b 00 00 ff d6 eb f7 } //01 00 
		$a_01_1 = {3f 61 31 3d 25 73 26 61 32 3d 25 73 26 61 33 3d 25 64 26 61 35 3d 25 73 26 61 34 3d 25 73 26 61 36 3d 25 64 00 } //01 00 
		$a_01_2 = {44 49 41 42 4c 4f 20 49 49 49 2e 45 58 45 00 } //01 00 
		$a_01_3 = {73 78 2e 6c 66 63 67 61 6d 65 2e 63 6f 6d 00 } //01 00 
		$a_01_4 = {64 33 2f 64 78 32 2f 77 6f 77 2e 61 73 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}