
rule Trojan_Win64_BumbleBee_HL_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.HL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {44 88 14 0a ff 40 ?? 48 8b 0d ?? ?? ?? ?? 8b 91 ?? ?? ?? ?? 2b ?? ?? ?? ?? ?? 8b 48 ?? 83 f2 ?? 0f af ca 89 48 ?? 48 8b 0d ?? ?? ?? ?? 8b 51 ?? 2b ?? ?? ?? ?? ?? 81 c2 ?? ?? ?? ?? 31 50 ?? 48 81 fb ?? ?? ?? ?? 0f 8c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}