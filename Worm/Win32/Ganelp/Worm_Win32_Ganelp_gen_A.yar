
rule Worm_Win32_Ganelp_gen_A{
	meta:
		description = "Worm:Win32/Ganelp.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 03 00 "
		
	strings :
		$a_03_0 = {0f be 02 83 f8 4d 0f 85 90 01 01 00 00 00 8b 0d 90 01 04 03 4d fc 0f be 51 05 83 fa 73 0f 85 90 01 01 00 00 00 a1 90 01 04 03 45 fc 0f be 48 08 83 f9 74 75 90 01 01 8b 15 90 01 04 03 55 fc 0f be 42 0c 83 f8 6e 75 90 01 01 8b 0d 90 01 04 03 4d fc 0f be 51 0f 83 fa 77 75 90 00 } //02 00 
		$a_03_1 = {e9 8c 00 00 00 c7 45 fc 00 00 00 00 eb 09 8b 55 fc 83 c2 01 89 55 fc 83 7d fc 2d 7d 1b 8b 45 fc 0f be 88 90 01 04 83 f9 2e 75 0a 8b 55 fc c6 82 90 01 04 5c eb d6 90 00 } //01 00 
		$a_01_2 = {62 64 3a 61 65 6c 2a 6e 45 3a 3a } //01 00 
		$a_01_3 = {47 69 70 46 41 74 74 65 46 65 6c } //01 00 
		$a_01_4 = {65 74 6e 41 74 65 6e 74 6e 6e 6f 63 49 72 43 65 } //01 00 
		$a_01_5 = {6c 65 65 65 78 74 68 45 75 53 6c 63 41 } //00 00 
	condition:
		any of ($a_*)
 
}