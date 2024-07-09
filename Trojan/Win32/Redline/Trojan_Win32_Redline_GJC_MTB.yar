
rule Trojan_Win32_Redline_GJC_MTB{
	meta:
		description = "Trojan:Win32/Redline.GJC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 84 1d ?? ?? ?? ?? 88 84 3d ?? ?? ?? ?? 88 8c 1d ?? ?? ?? ?? 0f b6 84 3d ?? ?? ?? ?? 03 c2 0f b6 c0 0f b6 84 05 ?? ?? ?? ?? 32 86 ?? ?? ?? ?? 88 86 ?? ?? ?? ?? c7 45 ?? ?? ?? ?? ?? 46 e9 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}