
rule PWS_Win32_OnLineGames_JD{
	meta:
		description = "PWS:Win32/OnLineGames.JD,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {b0 6c 52 c6 44 24 90 01 01 66 c6 44 24 90 01 01 63 c6 44 24 90 01 01 5f c6 44 24 90 01 01 6f c6 44 24 90 01 01 2e c6 44 24 90 01 01 64 88 44 24 90 01 01 88 44 24 90 01 01 88 5c 24 90 00 } //01 00 
		$a_00_1 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 66 69 6c 65 31 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 25 73 22 } //01 00 
		$a_00_2 = {43 6f 6e 74 65 6e 74 2d 44 69 73 70 6f 73 69 74 69 6f 6e 3a 20 66 6f 72 6d 2d 64 61 74 61 3b 20 6e 61 6d 65 3d 22 75 70 6c 6f 61 64 22 } //01 00 
		$a_00_3 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 6d 75 6c 74 69 70 61 72 74 2f 66 6f 72 6d 2d 64 61 74 61 3b 20 62 6f 75 6e 64 61 72 79 3d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 2d 37 64 39 63 62 33 31 30 34 38 34 } //01 00 
		$a_00_4 = {25 73 26 61 3d 25 73 26 75 3d 25 73 26 70 3d 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}