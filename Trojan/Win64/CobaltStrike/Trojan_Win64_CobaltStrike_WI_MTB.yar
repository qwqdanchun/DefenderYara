
rule Trojan_Win64_CobaltStrike_WI_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.WI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b 1c 24 48 8d 64 24 90 01 01 c6 83 90 01 05 1d 90 01 04 15 90 01 04 e0 90 01 01 d0 0b c0 09 90 01 01 08 60 90 01 01 30 06 50 a0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_CobaltStrike_WI_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.WI!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {b8 00 04 00 00 48 6b c0 04 48 8d 0d fc 68 01 00 48 03 c8 48 8b c1 8b 0c 24 c1 e9 18 48 8b 54 24 28 0f b6 12 33 ca 8b c9 8b 14 24 c1 e2 08 8b 04 88 33 c2 89 04 24 48 8b 44 24 28 48 ff c0 48 89 44 24 28 48 8b 44 24 30 48 ff c8 48 89 44 24 30 48 83 7c 24 30 00 75 a8 } //00 00 
	condition:
		any of ($a_*)
 
}