
rule Trojan_Win64_CobaltStrike_HU_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.HU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {4c 89 5a 20 ba 90 01 04 4d 89 99 90 01 04 83 e1 90 01 01 49 89 d3 49 d3 e3 44 89 c1 45 09 9c 82 90 01 04 83 e1 90 01 01 48 d3 e2 41 09 92 90 01 04 48 83 c4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}