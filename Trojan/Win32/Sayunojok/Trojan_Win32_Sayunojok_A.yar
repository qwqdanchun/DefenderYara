
rule Trojan_Win32_Sayunojok_A{
	meta:
		description = "Trojan:Win32/Sayunojok.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_01_0 = {57 53 5c 48 65 6c 70 5c 63 6e 77 62 2e 68 74 6d 6c } //02 00 
		$a_01_1 = {2f 73 79 6e 6a 6b 63 2e 63 6f 6d 2f 61 73 70 2f 6d 61 69 6c 2e 61 73 70 3f 51 51 6e 75 6d 62 65 72 3d } //02 00 
		$a_01_2 = {73 00 79 00 6e 00 6a 00 6b 00 63 00 24 00 } //02 00 
		$a_01_3 = {35 00 32 00 39 00 30 00 30 00 35 00 32 00 33 00 61 00 61 00 21 00 40 00 23 00 } //01 00 
		$a_01_4 = {63 6e 73 73 61 5f 64 65 69 6e 69 74 } //01 00 
		$a_01_5 = {68 ff 00 00 00 89 4c 24 28 b9 11 00 00 00 f3 ab b9 64 00 00 00 8d bc 24 a0 01 00 00 52 68 } //00 00 
		$a_00_6 = {80 10 00 } //00 7a 
	condition:
		any of ($a_*)
 
}