
rule Trojan_Win64_TrickBotCrypt_EN_MTB{
	meta:
		description = "Trojan:Win64/TrickBotCrypt.EN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {42 0f b6 04 00 88 04 11 8b 05 ?? ?? ?? ?? 0f af 05 ?? ?? ?? ?? 8b 54 24 30 03 d0 03 15 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 8b 05 ?? ?? ?? ?? 0f af 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 03 ca 03 c1 2b 05 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 2b 05 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 0f af 0d ?? ?? ?? ?? 2b c1 2b 05 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 0f af 0d ?? ?? ?? ?? 03 c1 48 63 d0 48 8b 4c 24 50 0f b6 44 24 24 88 04 11 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}