
rule Trojan_Win32_SmokeLoader_GFX_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.GFX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b f7 c1 ee ?? 03 74 24 ?? 8b 44 24 ?? 31 44 24 ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 75 ?? ff 15 ?? ?? ?? ?? 8b 4c 24 ?? 33 ce 8d 44 24 ?? 89 4c 24 ?? e8 ?? ?? ?? ?? 81 44 24 ?? 47 86 c8 61 83 6c 24 ?? ?? 0f 85 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}