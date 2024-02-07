
rule Trojan_Win32_Buroonux_A{
	meta:
		description = "Trojan:Win32/Buroonux.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {14 75 62 e8 89 7e f7 89 7a e4 4e a7 01 00 83 7b f8 0f 8b 15 91 00 00 89 cf 52 9f fe 51 af cd 4a } //01 00 
		$a_01_1 = {8a 54 01 01 8a 1c 01 32 da 88 1c 01 48 79 eb 5b a1 } //02 00 
		$a_01_2 = {5c 65 78 70 6c 6f 72 65 72 2e 65 78 65 00 00 00 73 6f 75 6c 00 00 00 00 2e 6c 6f 67 00 00 00 00 5f 00 00 00 25 73 20 23 25 64 00 00 2e 65 78 65 20 } //01 00 
		$a_01_3 = {c6 44 24 1c 5f c6 44 24 1d 46 c6 44 24 1e 69 c6 44 24 1f 72 c6 44 24 20 65 c6 44 24 21 2e c6 44 24 22 64 } //01 00 
		$a_01_4 = {c6 44 24 1c 77 c6 44 24 1d 73 88 44 24 1e c6 44 24 1f 5f c6 44 24 20 33 88 44 24 21 } //00 00 
		$a_00_5 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}