
rule Trojan_Win64_CobaltStrike_ACL_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.ACL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {4c 8d 4c 24 38 ba 90 01 04 48 89 c1 41 b8 90 01 04 ff 16 89 c1 e8 90 01 04 44 8a 63 58 41 83 f4 01 41 20 c4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}