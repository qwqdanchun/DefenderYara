
rule Trojan_Win32_Ursnif_GM_MTB{
	meta:
		description = "Trojan:Win32/Ursnif.GM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b c0 31 0d ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b ff c7 05 [0-10] 01 05 ?? ?? ?? ?? 8b ff a1 [0-10] 8b 0d ?? ?? ?? ?? 89 08 } //1
		$a_02_1 = {8b 45 fc 89 45 f4 8b 0d ?? ?? ?? ?? 03 4d ?? 89 0d ?? ?? ?? ?? 8b 55 ?? 89 55 ?? 8b 45 [0-40] 8d 84 0a } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}