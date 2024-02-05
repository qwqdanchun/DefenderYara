
rule Trojan_Win32_Racoon_K_MTB{
	meta:
		description = "Trojan:Win32/Racoon.K!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {b8 36 23 01 00 01 45 90 01 01 8b 0d 90 01 04 03 4d 90 01 01 8b 55 90 01 01 03 55 90 01 01 8a 02 88 01 90 00 } //01 00 
		$a_03_1 = {8b 45 08 8b 08 33 4d 90 01 01 8b 55 90 01 01 89 0a 90 00 } //01 00 
		$a_03_2 = {c1 e2 04 89 55 90 02 40 d3 e8 89 45 90 01 01 8b 4d 90 01 01 03 4d 90 01 01 89 4d 90 01 01 8b 55 90 01 01 33 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}