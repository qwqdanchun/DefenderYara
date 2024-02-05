
rule Worm_Win32_Dorkbot_AY{
	meta:
		description = "Worm:Win32/Dorkbot.AY,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 70 6f 6c 6c 6f 00 00 56 65 72 73 69 6f 6e 3a 20 5b 22 76 } //01 00 
		$a_03_1 = {42 6f 74 6b 69 6c 6c 65 72 00 90 02 04 00 4d 61 6c 77 61 72 65 20 44 65 74 65 63 74 65 64 2c 20 4c 6f 63 61 74 69 6f 6e 3a 20 5b 25 73 5d 90 00 } //01 00 
		$a_03_2 = {50 44 65 66 00 90 02 04 00 55 6e 2d 48 6f 6f 6b 65 64 20 5b 25 73 21 25 73 5d 90 00 } //01 00 
		$a_01_3 = {42 72 6f 77 73 65 72 3a 20 5b 25 73 5d 2c 20 57 65 62 73 69 74 65 3a 20 5b 25 73 5d 2c 20 55 73 65 72 6e 61 6d 65 3a 20 5b 25 73 5d 2c 20 50 61 73 73 77 6f 72 64 3a 20 5b 25 73 5d } //01 00 
		$a_03_4 = {8b 04 be 6a 2d 59 66 3b 08 75 90 01 01 0f b7 40 02 83 f8 64 74 90 01 01 83 f8 75 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}