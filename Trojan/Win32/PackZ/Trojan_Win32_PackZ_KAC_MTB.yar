
rule Trojan_Win32_PackZ_KAC_MTB{
	meta:
		description = "Trojan:Win32/PackZ.KAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b 03 81 ea 90 01 04 21 d7 81 e0 90 01 04 81 c2 90 01 04 89 f9 31 06 21 c9 4a 81 c6 90 01 04 f7 d7 01 d2 43 21 f9 29 d1 81 fe 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}