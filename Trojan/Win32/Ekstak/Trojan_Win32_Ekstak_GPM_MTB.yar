
rule Trojan_Win32_Ekstak_GPM_MTB{
	meta:
		description = "Trojan:Win32/Ekstak.GPM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 04 00 "
		
	strings :
		$a_03_0 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 90 01 03 00 90 01 03 00 00 d2 0a 00 d1 bb fe 58 90 00 } //04 00 
		$a_03_1 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 90 01 03 00 90 01 03 00 00 d2 0a 00 52 15 41 3a 90 00 } //04 00 
		$a_03_2 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 90 01 03 00 90 01 03 00 00 d2 0a 00 19 92 a2 e5 90 00 } //04 00 
		$a_03_3 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 90 01 03 00 90 01 03 00 00 be 0a 00 eb e0 52 c6 90 00 } //04 00 
		$a_03_4 = {72 44 6c 50 74 53 cd e6 d7 7b 0b 2a 01 00 00 00 90 01 03 00 90 01 03 00 00 d2 0a 00 3a ed b8 a6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}