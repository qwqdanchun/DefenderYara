
rule Trojan_Win64_CobaltStrike_RB_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.RB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 63 ca 83 c2 01 0f b6 4c 0c 90 01 01 30 08 48 8d 48 90 01 01 49 39 c8 74 1f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}