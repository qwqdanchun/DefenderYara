
rule Backdoor_Win32_Kolok_A{
	meta:
		description = "Backdoor:Win32/Kolok.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {31 c9 85 d2 74 21 52 3a 0a 74 17 3a 4a 01 74 11 3a 4a 02 74 0b 3a 4a 03 74 05 83 c2 04 eb e8 42 42 42 89 d1 5a 29 d1 e9 } //02 00 
		$a_03_1 = {66 c7 43 04 20 03 66 c7 43 06 58 02 66 c7 43 08 4b 00 66 c7 43 0a 20 00 c6 43 0c 00 8d 43 10 ba 90 01 04 e8 90 00 } //01 00 
		$a_01_2 = {25 32 62 75 69 6c 64 3d 25 31 26 76 65 72 73 69 6f 6e 3d 32 2e 30 2e 46 69 78 26 63 6f 6e 6e 65 63 74 3d 31 } //01 00  %2build=%1&version=2.0.Fix&connect=1
		$a_01_3 = {25 76 78 25 68 78 25 62 70 70 20 2d 20 25 66 } //0a 00  %vx%hx%bpp - %f
		$a_01_4 = {74 61 73 6b 6d 67 72 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}