
rule Trojan_Win64_CobaltStrike_COM_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.COM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 c0 01 89 84 24 90 01 04 8b 84 24 90 01 04 39 84 24 90 01 04 73 90 01 01 48 63 8c 24 90 01 04 48 8b 44 24 90 01 01 44 0f b6 04 08 8b 84 24 90 01 04 99 b9 90 01 04 f7 f9 48 63 ca 48 8b 44 24 90 01 01 0f b6 04 08 41 8b d0 33 d0 48 63 8c 24 90 01 04 48 8b 44 24 90 01 01 88 14 08 eb 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}