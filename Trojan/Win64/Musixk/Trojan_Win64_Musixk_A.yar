
rule Trojan_Win64_Musixk_A{
	meta:
		description = "Trojan:Win64/Musixk.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {c7 44 24 08 00 00 00 00 c7 44 24 08 90 01 04 8b 44 24 08 35 90 01 04 35 90 01 04 89 44 24 08 8b 44 24 08 90 00 } //03 00 
		$a_01_1 = {48 8d 44 24 58 c7 44 24 58 41 00 45 00 c7 44 24 5c 53 00 00 00 48 8d 4d ef 48 89 44 24 50 45 33 c9 48 8b 54 24 50 45 33 c0 ff d7 } //02 00 
		$a_03_2 = {8d 77 01 4c 8d 3c c5 00 00 00 00 4c 8d 2d 90 01 04 66 0f 1f 90 02 07 8b e6 90 00 } //02 00 
		$a_03_3 = {0f b6 07 84 c0 74 90 01 01 3c 20 74 90 01 01 8b 90 02 0a 41 ff c0 48 ff c7 90 00 } //01 00 
		$a_01_4 = {65 48 8b 04 25 60 00 00 00 83 b8 18 01 00 00 06 74 0e 83 b8 18 01 00 00 0a } //00 00 
		$a_00_5 = {5d 04 00 00 } //25 17 
	condition:
		any of ($a_*)
 
}