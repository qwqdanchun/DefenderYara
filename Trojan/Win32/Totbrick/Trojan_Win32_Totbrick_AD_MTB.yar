
rule Trojan_Win32_Totbrick_AD_MTB{
	meta:
		description = "Trojan:Win32/Totbrick.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {8b c8 2b ce 01 4c 24 ?? 8d 4c 3b ?? 66 89 0d ?? ?? ?? ?? 8b 4c 24 14 8b 09 89 0d ?? ?? ?? ?? 0f b7 4c 24 10 bd ?? ?? ?? ?? 8d bc 0f ?? ?? ?? ?? 3b f5 75 } //1
		$a_02_1 = {8b 44 24 14 8b 15 ?? ?? ?? ?? 89 10 a1 ?? ?? ?? ?? 0f af 05 ?? ?? ?? ?? 3d ?? ?? ?? ?? 74 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}