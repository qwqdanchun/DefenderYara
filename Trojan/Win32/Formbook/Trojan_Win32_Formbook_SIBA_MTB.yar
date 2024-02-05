
rule Trojan_Win32_Formbook_SIBA_MTB{
	meta:
		description = "Trojan:Win32/Formbook.SIBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b6 11 83 f2 90 01 01 8b 45 90 01 01 03 45 90 01 01 88 10 90 00 } //01 00 
		$a_03_1 = {88 10 8b 4d 90 01 01 03 4d 90 01 01 0f b6 11 83 c2 90 01 01 8b 45 90 1b 00 03 45 90 1b 01 88 10 90 00 } //01 00 
		$a_03_2 = {88 10 8b 4d 90 01 01 03 4d 90 01 01 8a 11 80 ea 90 01 01 8b 45 90 1b 00 03 45 90 1b 01 88 10 90 00 } //01 00 
		$a_03_3 = {83 c2 01 89 55 90 01 01 8b 45 90 1b 00 3b 45 90 01 01 90 18 6a 00 8b 4d 90 01 01 51 6a 00 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}