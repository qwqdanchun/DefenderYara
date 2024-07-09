
rule Trojan_Win32_Hancitor_GPV_MTB{
	meta:
		description = "Trojan:Win32/Hancitor.GPV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {8b 38 01 15 ?? ?? ?? ?? 0f b6 c3 b2 06 f6 ea 02 c1 a2 ?? ?? ?? ?? b8 45 22 00 00 66 [0-06] 75 ?? 0f b6 c3 a3 ?? ?? ?? ?? 8d 86 ?? ?? ?? ?? 03 c8 8b 44 24 ?? 83 d5 00 83 44 24 ?? ?? 81 c7 34 48 0a 01 ff 4c 24 ?? 89 3d ?? ?? ?? ?? 89 38 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}