
rule Trojan_Win64_Emotet_BV_MTB{
	meta:
		description = "Trojan:Win64/Emotet.BV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b c2 c1 e8 90 01 01 03 d0 8b c6 ff c6 6b d2 90 01 01 2b c2 48 63 c8 42 0f b6 04 01 43 32 44 11 90 01 01 48 ff cb 41 88 42 90 01 01 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}