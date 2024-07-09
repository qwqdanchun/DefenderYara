
rule Trojan_Win32_Qakbot_ZX_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.ZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {b8 5f 33 00 00 85 c0 74 59 8b 4d f8 3b 0d ?? ?? ?? ?? 72 02 eb 4c 8b 45 f8 33 d2 b9 ?? ?? 00 00 f7 f1 85 d2 75 0e } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qakbot_ZX_MTB_2{
	meta:
		description = "Trojan:Win32/Qakbot.ZX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 45 fc 89 45 f4 8b 0d ?? ?? ?? ?? 03 4d fc 89 0d ?? ?? ?? ?? 8b 55 f4 89 55 e8 8b 45 e8 50 68 ?? ?? ?? 00 e8 ?? ?? ?? ?? 83 c4 08 8b 4d f0 8b 55 fc 8d 84 0a ?? ?? ?? ?? 89 45 ec 8b 0d ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 8b 55 ec 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? a3 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 4d fc 83 c1 04 89 4d fc 8b 55 fc 3b 15 ?? ?? ?? ?? 72 02 eb 0d b8 ?? 00 00 00 85 c0 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}