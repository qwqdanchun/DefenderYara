
rule Trojan_Win64_CobaltStrike_EAA_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.EAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 01 00 00 03 00 "
		
	strings :
		$a_03_0 = {2b c1 48 8b 8b 90 01 04 33 43 08 35 90 01 04 89 43 08 8b 83 90 01 04 42 31 04 11 49 83 c2 04 8b 83 90 01 04 01 83 90 01 04 49 81 fa 98 e2 01 00 7c b0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}