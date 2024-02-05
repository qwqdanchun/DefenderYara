
rule Trojan_Win32_Kovter_I_{
	meta:
		description = "Trojan:Win32/Kovter.I!!Kovter.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 54 32 ff 80 e2 0f 32 c2 88 45 f3 } //01 00 
		$a_03_1 = {33 c0 8a 03 ba 02 00 00 00 e8 90 01 04 8b 55 90 01 01 8b c7 e8 90 01 04 43 4e 75 e1 90 00 } //01 00 
		$a_01_2 = {3d 6e 65 77 25 32 30 41 63 74 69 76 65 58 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 3b 00 } //01 00 
		$a_01_3 = {69 74 63 6f 5c 69 6e 66 65 63 74 5c 62 69 6e } //00 00 
	condition:
		any of ($a_*)
 
}