
rule Trojan_Win32_Emotet_BK_MTB{
	meta:
		description = "Trojan:Win32/Emotet.BK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8a d0 0a 44 24 ?? f6 d2 f6 d1 0a d1 22 d0 8b 44 24 ?? 88 10 83 c0 01 83 6c 24 ?? 01 89 44 24 ?? 0f 85 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Emotet_BK_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.BK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 e8 03 a3 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 2b 0d ?? ?? ?? ?? 89 0d ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 89 15 ?? ?? ?? ?? 83 3d ?? ?? ?? ?? 00 0f 85 } //1
		$a_02_1 = {68 73 10 00 00 a1 ?? ?? ?? ?? 50 ff 15 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 0f be 14 01 a1 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 0f be 08 03 ca 8b 15 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 88 0a } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}