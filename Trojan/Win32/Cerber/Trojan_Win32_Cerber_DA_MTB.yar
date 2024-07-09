
rule Trojan_Win32_Cerber_DA_MTB{
	meta:
		description = "Trojan:Win32/Cerber.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {83 c2 22 89 95 ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? 83 e8 22 89 85 ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 6b c9 22 89 8d ?? ?? ?? ?? 8b 55 f8 33 55 f0 89 55 f8 8b 85 ?? ?? ?? ?? 83 c0 22 89 85 ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 83 e9 22 89 8d ?? ?? ?? ?? 8b 95 ?? ?? ?? ?? 6b d2 22 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}