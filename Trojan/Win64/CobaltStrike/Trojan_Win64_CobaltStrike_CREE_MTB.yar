
rule Trojan_Win64_CobaltStrike_CREE_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.CREE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f b7 00 41 8b c9 c1 c9 90 01 01 41 ff c3 03 c8 41 8b c3 49 03 c2 44 33 c9 80 38 00 75 90 00 } //01 00 
		$a_03_1 = {48 89 4c 24 08 48 89 54 24 10 4c 89 44 24 18 4c 89 4c 24 20 48 83 ec 90 01 01 8b 0d 81 32 0b 00 e8 90 01 04 48 83 c4 90 01 01 48 8b 4c 24 08 48 8b 54 24 10 4c 8b 44 24 18 4c 8b 4c 24 20 4c 8b d1 0f 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}