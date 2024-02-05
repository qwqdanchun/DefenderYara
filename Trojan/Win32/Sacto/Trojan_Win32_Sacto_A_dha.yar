
rule Trojan_Win32_Sacto_A_dha{
	meta:
		description = "Trojan:Win32/Sacto.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 48 66 81 38 4d 5a 75 41 8b 48 3c 03 c8 81 39 50 45 00 00 75 34 } //01 00 
		$a_01_1 = {8b 78 0c 42 89 78 14 8b 78 08 89 78 10 33 ff 66 8b 79 06 8b c6 83 c6 28 3b d7 7c e4 5f } //01 00 
		$a_01_2 = {8b f0 83 c4 18 85 f6 74 27 57 8d 7c 24 08 83 c9 ff 33 c0 f2 ae f7 d1 } //01 00 
		$a_01_3 = {76 17 8a 54 24 10 8b 4c 24 08 53 8a 1c 08 02 da 88 1c 08 40 3b c6 72 f3 5b } //01 00 
		$a_01_4 = {5c 53 73 6c 4d 4d } //01 00 
		$a_01_5 = {25 77 73 3a 25 64 2f 25 64 25 73 25 64 48 54 54 50 2f 31 2e 31 00 } //01 00 
		$a_01_6 = {6f 63 74 61 73 2e 74 6d 70 00 } //01 00 
		$a_01_7 = {2e 00 35 00 31 00 76 00 69 00 70 00 2e 00 62 00 69 00 7a 00 } //00 00 
	condition:
		any of ($a_*)
 
}