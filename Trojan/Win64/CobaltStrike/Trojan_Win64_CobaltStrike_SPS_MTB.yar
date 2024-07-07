
rule Trojan_Win64_CobaltStrike_SPS_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.SPS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 c7 45 68 90 01 04 8b 45 24 41 b9 90 01 04 41 b8 90 01 04 8b d0 33 c9 ff 15 90 01 04 48 89 45 68 48 83 7d 68 00 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}