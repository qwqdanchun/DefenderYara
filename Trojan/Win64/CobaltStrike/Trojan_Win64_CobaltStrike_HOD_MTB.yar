
rule Trojan_Win64_CobaltStrike_HOD_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.HOD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {0f b6 04 01 89 84 24 48 01 00 00 8b 44 24 48 99 b9 25 00 00 00 f7 f9 8b c2 48 98 48 8b 4c 24 20 0f b6 04 01 8b 8c 24 48 01 00 00 33 c8 8b c1 48 63 4c 24 48 48 8b 54 24 28 88 04 0a eb 9f } //00 00 
	condition:
		any of ($a_*)
 
}