
rule Trojan_Win32_Trickbot_AB_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0b c8 88 4d [0-08] e8 ?? ?? ?? ?? 83 c4 ?? 0f b6 55 ?? 0f b6 45 ?? 33 c2 88 45 [0-08] e8 ?? ?? ?? ?? 83 c4 ?? 8a 4d ?? 80 c1 ?? 88 4d ?? 68 ?? ?? ?? ?? e8 ?? ?? ?? ?? 83 c4 ?? 8b 55 ?? 8a 45 ?? 88 02 90 0a 70 00 0f b6 45 ?? 0f b6 4d } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}