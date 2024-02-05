
rule Trojan_Win32_Kovter_M{
	meta:
		description = "Trojan:Win32/Kovter.M,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 8b ca 8b d8 d3 e3 b9 20 00 00 00 2b ca d3 e8 0b d8 8b c3 } //01 00 
		$a_00_1 = {8a 84 85 e8 fb ff ff 8b 55 ec 30 04 3a 47 ff 4d e8 } //01 00 
		$a_00_2 = {8b 45 fc 8a 44 18 ff 24 0f 8b 55 f8 8a 54 32 ff 80 e2 0f 32 c2 88 45 f3 } //01 00 
		$a_03_3 = {33 c0 8a 03 ba 02 00 00 00 e8 90 01 04 8b 55 90 01 01 8b c7 e8 90 01 04 43 4e 75 e1 90 00 } //01 00 
		$a_00_4 = {74 72 79 20 7b 6a 77 70 6c 61 79 65 72 28 29 2e 70 6c 61 79 28 29 7d } //01 00 
		$a_01_5 = {3e 00 3e 00 70 00 61 00 74 00 68 00 00 00 } //01 00 
		$a_03_6 = {2e 52 75 6e 28 22 90 02 10 69 65 78 20 24 65 6e 76 3a 90 00 } //00 00 
		$a_00_7 = {7e 15 00 } //00 01 
	condition:
		any of ($a_*)
 
}