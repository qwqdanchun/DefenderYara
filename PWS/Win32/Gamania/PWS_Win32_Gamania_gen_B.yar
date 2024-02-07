
rule PWS_Win32_Gamania_gen_B{
	meta:
		description = "PWS:Win32/Gamania.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 05 00 "
		
	strings :
		$a_01_0 = {26 73 75 62 6a 65 63 74 3d 00 00 00 ff ff ff ff 08 00 00 00 26 73 65 6e 64 65 72 3d } //05 00 
		$a_01_1 = {47 45 54 20 00 00 00 00 ff ff ff ff 0b 00 00 00 20 48 54 54 50 2f 31 2e 30 0d 0a 00 ff } //05 00 
		$a_01_2 = {0d 0a 00 00 ff ff ff ff 18 00 00 00 41 63 63 65 70 74 2d 4c 61 6e 67 75 61 67 65 3a 20 7a 68 2d 63 6e 0d 0a 00 00 00 00 ff ff ff ff 40 } //0a 00 
		$a_02_3 = {85 f6 7e 2e c7 45 f8 01 00 00 00 8b 45 fc 8b 55 f8 8a 5c 10 ff 80 c3 90 01 01 8d 45 f4 8b d3 90 00 } //03 00 
		$a_00_4 = {43 3a 5c 67 61 6d 65 } //03 00  C:\game
		$a_00_5 = {67 61 6d 65 2e 74 78 74 } //01 00  game.txt
		$a_01_6 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //05 00  SetWindowsHookExA
		$a_01_7 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6a 70 6c 69 6e 65 61 67 65 2e 63 6f 6d 2f 66 69 72 6f 2f 6d 61 69 6c 2e 61 73 70 3f 74 6f 6d 61 69 6c 3d 31 36 33 40 31 36 33 2e 63 6f 6d 26 6d 61 69 6c 62 6f 64 79 3d 00 00 } //02 00 
		$a_01_8 = {67 61 6d 65 3a 6a 70 72 6f 0d 0a 73 65 72 76 65 72 3a } //00 00  慧敭樺牰൯猊牥敶㩲
	condition:
		any of ($a_*)
 
}