
rule Worm_Win32_Dorkbot_I_{
	meta:
		description = "Worm:Win32/Dorkbot.I!!Dorkbot.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 2e 70 32 31 2d 3e 20 4d 65 73 73 61 67 65 20 68 69 6a 61 63 6b 65 64 21 00 00 6d 73 6e 6d 73 67 00 00 6d 73 6e 69 6e 74 00 00 62 61 64 64 72 00 00 00 58 2d 4d 4d 53 2d 49 4d 2d 46 6f 72 6d 61 74 3a 00 00 00 00 43 41 4c 20 25 64 20 25 32 35 36 73 00 00 00 00 6d 73 6e 75 00 00 00 00 44 6f 6e 65 20 66 72 73 74 0a 00 00 6e 67 72 2d 3e 62 6c 6f 63 6b 73 69 7a 65 3a 20 25 64 0a 00 62 6c 6f 63 6b 5f 73 69 7a 65 3a 20 25 64 0a 00 4e 74 46 72 65 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 } //05 00 
	condition:
		any of ($a_*)
 
}