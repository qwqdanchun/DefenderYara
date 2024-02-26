
rule Trojan_Win32_Ekstak_GPE_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.GPE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 04 00 "
		
	strings :
		$a_01_0 = {7e d1 24 00 c2 d1 24 00 b2 d1 24 00 a0 d1 24 00 90 d1 24 00 70 d1 24 00 5c d1 24 } //04 00 
		$a_01_1 = {ce d1 24 00 10 d2 24 00 fe d1 24 00 ee d1 24 00 dc d1 24 00 ba d1 24 00 a4 d1 24 } //04 00 
		$a_01_2 = {5e 19 25 00 72 19 25 00 82 19 25 00 a2 19 25 00 b4 19 25 00 c4 19 25 00 d6 19 25 00 e6 19 25 00 f6 19 25 00 04 1a 25 00 14 1a 25 00 28 1a 25 } //04 00 
		$a_01_3 = {a6 17 25 00 98 17 25 00 8a 17 25 00 78 17 25 00 68 17 25 00 56 17 25 00 42 17 25 00 2a 17 25 00 12 17 25 00 02 17 25 00 ee 16 25 00 e0 16 25 } //00 00 
	condition:
		any of ($a_*)
 
}