
rule Trojan_Win32_PackZ_KAK_MTB{
	meta:
		description = "Trojan:Win32/PackZ.KAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {8b 37 49 21 c1 81 e6 90 01 04 81 e9 90 01 04 4a 01 c9 31 33 21 d1 48 f7 d2 43 b8 90 01 04 81 e9 90 01 04 29 c2 47 29 c8 01 d2 f7 d1 81 fb 92 9c 65 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}