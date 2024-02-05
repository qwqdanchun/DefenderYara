
rule Backdoor_Win32_Drixed_M{
	meta:
		description = "Backdoor:Win32/Drixed.M,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {8b 5c d6 10 8b 6c d6 14 33 d8 89 5c 24 10 33 ef 89 7c 24 04 89 6c 24 14 8b e9 89 04 24 } //01 00 
		$a_01_1 = {8b 44 cf 10 8b 7c cf 14 33 44 24 0c 33 7c 24 08 89 04 24 33 c0 89 7c 24 04 0f b7 3c 44 } //04 00 
		$a_01_2 = {68 00 80 00 00 6a 00 ff b0 1c 04 00 00 68 34 12 00 00 ff b0 20 07 00 00 ff e2 } //04 00 
		$a_01_3 = {74 0b 41 be 45 84 00 00 e9 a4 00 00 00 b9 96 69 00 00 41 be 45 84 00 00 49 8b 97 18 04 00 00 } //01 00 
		$a_01_4 = {8b 4c 24 04 8b 3c 24 8b 5c 24 2c 8b 74 d3 14 8b 44 d3 10 33 f1 89 74 24 14 33 c7 89 3c 24 89 44 24 10 8b c5 8b 6c 24 0c 8b 4c 24 08 8b 74 24 34 8b 7c 24 30 0f b7 5c 44 10 } //00 00 
		$a_00_5 = {80 10 00 00 3c } //30 a2 
	condition:
		any of ($a_*)
 
}