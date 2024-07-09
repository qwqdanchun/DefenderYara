
rule Trojan_Win32_Dridex_DEH_MTB{
	meta:
		description = "Trojan:Win32/Dridex.DEH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_02_0 = {83 c6 fb 81 c2 ?? ?? ?? ?? 03 f1 03 da 0f b7 c6 8b 54 24 10 8b 35 ?? ?? ?? ?? c1 e6 06 2b 35 ?? ?? ?? ?? 8b 12 89 54 24 0c 8b d0 03 f2 } //1
		$a_02_1 = {8b c1 03 f0 a3 ?? ?? ?? ?? 89 3d ?? ?? ?? ?? 8d 5c 33 ad 8a ca 8a c3 f6 e9 8a c8 a1 ?? ?? ?? ?? 02 0d ?? ?? ?? ?? 05 ?? ?? ?? ?? a3 ?? ?? ?? ?? 89 45 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=1
 
}