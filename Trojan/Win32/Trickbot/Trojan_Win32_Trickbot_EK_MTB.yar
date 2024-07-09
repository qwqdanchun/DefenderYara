
rule Trojan_Win32_Trickbot_EK_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.EK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {2b c8 03 0d ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 0f af 15 ?? ?? ?? ?? 2b ca a1 ?? ?? ?? ?? 0f af 05 ?? ?? ?? ?? 03 c8 8b 15 ?? ?? ?? ?? 0f af 15 ?? ?? ?? ?? 03 ca a1 ?? ?? ?? ?? 0f af 05 ?? ?? ?? ?? 03 c8 8b 15 ?? ?? ?? ?? 0f af 15 ?? ?? ?? ?? 03 ca } //1
		$a_03_1 = {69 c0 f8 00 00 00 03 d0 8b 0d ?? ?? ?? ?? 0f af 0d ?? ?? ?? ?? 69 c9 f8 00 00 00 03 d1 a1 ?? ?? ?? ?? 0f af 05 ?? ?? ?? ?? 69 c0 f8 00 00 00 03 d0 8b 0d ?? ?? ?? ?? 0f af 0d ?? ?? ?? ?? 69 c9 f8 00 00 00 03 d1 89 55 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}