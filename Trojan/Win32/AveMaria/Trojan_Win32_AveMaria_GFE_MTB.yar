
rule Trojan_Win32_AveMaria_GFE_MTB{
	meta:
		description = "Trojan:Win32/AveMaria.GFE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b c6 33 d2 f7 f3 8a 44 14 18 30 04 2e 46 81 fe 90 01 04 7c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}