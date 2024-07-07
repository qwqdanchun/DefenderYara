
rule Trojan_Win64_CobaltStrike_BX_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.BX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 88 4c 24 90 01 01 48 90 01 03 0f 84 90 01 04 89 c1 c1 e9 90 01 01 41 32 48 90 01 01 41 90 01 04 48 83 fe 90 01 01 0f 84 90 01 04 89 c1 c1 e9 90 01 01 41 32 48 90 01 01 41 88 4c 24 90 01 01 48 83 fe 90 01 01 0f 84 90 01 04 c1 e8 90 01 01 41 32 40 90 01 01 41 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_CobaltStrike_BX_MTB_2{
	meta:
		description = "Trojan:Win64/CobaltStrike.BX!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 "
		
	strings :
		$a_01_0 = {48 63 d0 48 8b 45 20 48 01 d0 0f b6 08 48 8b 55 e0 8b 45 fc 48 98 0f b6 04 02 31 c8 88 45 df 8b 45 fc 48 63 d0 48 8b 45 20 48 01 c2 0f b6 45 df 88 02 } //1
	condition:
		((#a_01_0  & 1)*1) >=1
 
}