
rule Trojan_Win32_DiamondFox_G_MTB{
	meta:
		description = "Trojan:Win32/DiamondFox.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_02_0 = {33 d2 8b c1 f7 f7 8a 99 ?? ?? ?? ?? 41 0f be 82 ?? ?? ?? ?? 03 f0 0f b6 d3 03 f2 81 e6 ff 00 00 00 8a 86 ?? ?? ?? ?? 88 81 ?? ?? ?? ?? 88 9e ?? ?? ?? ?? 81 f9 00 01 00 00 75 } //2
	condition:
		((#a_02_0  & 1)*2) >=2
 
}