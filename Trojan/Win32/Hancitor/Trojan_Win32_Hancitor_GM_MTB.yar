
rule Trojan_Win32_Hancitor_GM_MTB{
	meta:
		description = "Trojan:Win32/Hancitor.GM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {8d 44 11 ff 33 c9 a3 ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 8b 55 ?? 8b 45 ?? 8a 08 88 0a 8b 55 ?? 83 c2 ?? 89 55 ?? 8b 45 ?? 83 c0 ?? 89 45 ?? 8b 4d ?? 81 e9 ?? ?? ?? ?? 8b 55 ?? 83 da ?? 2b 0d ?? ?? ?? ?? 1b 15 ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 89 15 ?? ?? ?? ?? eb } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}