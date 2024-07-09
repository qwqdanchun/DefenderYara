
rule Trojan_Win32_Pikabot_HT_MTB{
	meta:
		description = "Trojan:Win32/Pikabot.HT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 d1 03 c2 0f b6 c0 89 45 ?? 8a 84 05 ?? ?? ?? ?? 88 84 3d ?? ?? ?? ?? 8b 45 ?? 88 8c 05 ?? ?? ?? ?? 0f b6 84 3d ?? ?? ?? ?? 03 c2 0f b6 c0 8a 84 05 ?? ?? ?? ?? 32 44 35 ?? 88 84 35 ?? ?? ?? ?? 46 83 fe ?? 72 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}