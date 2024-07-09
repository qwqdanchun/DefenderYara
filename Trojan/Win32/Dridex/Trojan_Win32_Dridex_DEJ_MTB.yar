
rule Trojan_Win32_Dridex_DEJ_MTB{
	meta:
		description = "Trojan:Win32/Dridex.DEJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {0f b7 cf c1 e2 ?? f7 d9 2b ca 8b d0 2b 15 ?? ?? ?? ?? 01 0d ?? ?? ?? ?? 83 c2 ?? 89 15 ?? ?? ?? ?? 8b 4c 24 ?? 03 c6 03 f8 8b 44 24 ?? 05 ?? ?? ?? ?? 89 44 24 ?? 89 01 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}