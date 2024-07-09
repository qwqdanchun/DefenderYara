
rule Trojan_Win32_Emotet_PK_MTB{
	meta:
		description = "Trojan:Win32/Emotet.PK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {55 89 e5 53 83 ec ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 ?? c7 04 24 ?? ?? ?? ?? e8 ?? ?? ff ff 89 45 } //1
		$a_02_1 = {c7 44 24 10 08 00 00 00 c7 44 24 0c 01 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 04 00 00 00 00 8d 45 ?? 89 04 24 ff d2 83 ec 14 85 c0 0f 94 c0 84 c0 74 ?? 8b 55 ?? c7 44 24 10 00 00 00 f0 c7 44 24 0c 01 00 00 00 c7 44 24 08 00 00 00 00 c7 44 24 04 00 00 00 00 8d 45 f0 89 04 24 ff d2 83 ec 14 85 c0 0f 94 c0 84 c0 74 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}