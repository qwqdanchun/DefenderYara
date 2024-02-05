
rule Trojan_Win32_Formbook_SIBB_MTB{
	meta:
		description = "Trojan:Win32/Formbook.SIBB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {31 c0 80 04 06 90 01 01 90 02 50 8b 4d 90 01 01 80 04 01 90 01 01 90 02 50 8b 4d 90 1b 02 fe 04 01 90 02 50 8b 4d 90 1b 02 80 34 01 90 01 01 90 02 50 8b 4d 90 1b 02 fe 0c 01 90 02 50 39 c3 74 90 01 01 8b 75 90 1b 02 40 eb 90 01 01 8b 45 90 1b 02 ff e0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}