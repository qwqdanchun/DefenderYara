
rule Trojan_Win64_CobaltStrike_ZD_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.ZD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {48 0f b7 12 49 81 cb 90 01 04 49 81 eb 90 01 04 49 21 d5 48 01 ea 4c 21 e3 24 90 01 01 49 c7 c2 90 01 04 49 81 c5 90 01 04 49 29 d5 48 89 ef 48 81 c7 90 01 04 49 31 cb 4c 31 d1 4c 01 e9 49 81 c3 90 01 04 8a 1f 4c 09 e9 4d 01 d5 80 f3 a0 4d 21 ea 49 81 ea 90 01 04 49 31 dd 49 81 f3 90 01 04 80 eb 90 01 01 80 fb 00 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}