
rule Trojan_Win64_BumbleBee_ZA_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.ZA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {48 63 44 24 ?? 48 8b 0d ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 8b 04 81 33 c2 48 63 4c 24 ?? 48 8b 94 24 ?? ?? ?? ?? 48 8b 92 ?? ?? ?? ?? 89 04 8a b8 ?? ?? ?? ?? 48 6b c0 ?? 48 8d 0d ?? ?? ?? ?? 48 8b 94 24 ?? ?? ?? ?? 8b 52 ?? 81 ea ?? ?? ?? ?? 8b 04 01 2b c2 b9 ?? ?? ?? ?? 48 6b c9 ?? 48 8d 15 ?? ?? ?? ?? 89 04 0a b8 ?? ?? ?? ?? 48 6b c0 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}