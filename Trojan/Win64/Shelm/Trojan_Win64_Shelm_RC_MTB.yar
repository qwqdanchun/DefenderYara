
rule Trojan_Win64_Shelm_RC_MTB{
	meta:
		description = "Trojan:Win64/Shelm.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 98 48 8d 15 90 01 04 0f b6 04 10 83 f0 45 89 c1 8b 85 8c 00 00 00 48 98 48 8d 15 90 01 04 88 0c 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win64_Shelm_RC_MTB_2{
	meta:
		description = "Trojan:Win64/Shelm.RC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 d2 4c 8b 44 24 90 01 01 49 8b c0 41 b8 04 00 00 00 49 f7 f0 48 8b c2 0f be 44 04 90 01 01 48 8b 54 24 90 01 01 0f b6 0c 11 33 c8 8b c1 48 63 4c 24 90 01 01 48 8d 15 90 01 04 88 04 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}