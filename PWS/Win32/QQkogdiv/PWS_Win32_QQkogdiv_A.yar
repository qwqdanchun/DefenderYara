
rule PWS_Win32_QQkogdiv_A{
	meta:
		description = "PWS:Win32/QQkogdiv.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6a 2e ff d7 8b d0 8d 4d 9c ff d6 50 ff d3 8b d0 8d 4d 98 ff d6 50 6a 63 ff d7 8b d0 8d 4d 94 ff d6 50 ff d3 8b d0 8d 4d 90 ff d6 50 6a 6e } //01 00 
		$a_01_1 = {00 11 62 84 76 0b 7a 8f 5e 5c 00 51 00 51 00 56 00 69 00 64 00 65 00 6f 00 5c 00 51 00 51 00 56 00 69 00 64 00 65 00 6f 00 2e 00 76 00 62 00 70 00 00 } //01 00 
		$a_01_2 = {51 51 56 69 64 65 6f 2e 6a 63 62 75 74 74 6f 6e 00 } //01 00 
		$a_01_3 = {6c 00 6f 00 67 00 69 00 6e 00 2e 00 61 00 73 00 70 00 3f 00 75 00 3d 00 00 00 } //01 00 
		$a_01_4 = {7b 00 72 00 65 00 67 00 6f 00 6b 00 7d 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}