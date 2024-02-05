
rule Trojan_Win32_Bamital_A{
	meta:
		description = "Trojan:Win32/Bamital.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {75 02 eb 04 8b cb f3 a4 c6 07 e9 90 09 03 00 80 3e 90 03 01 01 e9 00 90 00 } //01 00 
		$a_01_1 = {74 06 c7 00 6e 6f 6e 65 } //01 00 
		$a_01_2 = {74 06 83 c0 07 c6 00 30 } //01 00 
		$a_01_3 = {6b 23 00 23 65 6e 64 23 00 3c 74 } //01 00 
		$a_03_4 = {8b c8 8b 7d 08 d2 0f 83 c7 90 01 01 e2 f9 90 00 } //01 00 
		$a_01_5 = {2a f2 8a 07 3c 00 72 0c 38 f0 77 08 04 ff 2a c2 04 01 eb 02 2a c2 88 07 } //02 00 
		$a_03_6 = {74 22 b9 05 00 00 00 8d 35 90 01 04 8d 3d 90 01 04 83 c7 22 f3 a4 c6 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}