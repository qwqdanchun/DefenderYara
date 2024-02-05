
rule Trojan_Win32_Bewmecky_A{
	meta:
		description = "Trojan:Win32/Bewmecky.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {7c 3b 83 7d 08 05 75 35 8b 75 0c 8b de 83 3e 00 74 2b 03 36 8b 4e 44 } //01 00 
		$a_03_1 = {6a 10 ff 15 90 01 04 66 85 c0 79 0b 83 c6 9f 83 fe 19 77 03 80 c3 e0 90 00 } //01 00 
		$a_03_2 = {8b 45 f8 8a 04 30 fe c0 3c 26 88 06 75 03 c6 06 24 ff 75 08 90 01 01 46 e8 90 01 04 3b 90 01 01 59 72 e0 90 00 } //01 00 
		$a_03_3 = {75 f2 eb 2a 8b 3d 90 01 04 8d 45 08 50 6a 40 6a 04 56 ff d7 50 ff 15 90 01 04 6a 00 6a 04 8d 45 0c 50 56 ff d7 50 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}