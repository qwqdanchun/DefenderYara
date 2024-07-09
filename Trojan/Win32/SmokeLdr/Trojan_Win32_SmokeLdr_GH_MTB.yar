
rule Trojan_Win32_SmokeLdr_GH_MTB{
	meta:
		description = "Trojan:Win32/SmokeLdr.GH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_02_0 = {30 0c 3e 46 3b f3 7c 90 0a 28 00 a1 ?? ?? ?? ?? 69 c0 ?? ?? ?? ?? 05 ?? ?? ?? ?? a3 ?? ?? ?? ?? 8a 0d } //10
		$a_02_1 = {3d 03 02 00 00 75 [0-09] 41 3b c8 90 0a 32 00 8b 15 ?? ?? ?? ?? 8a 94 0a ?? ?? ?? ?? 8b ?? ?? ?? ?? ?? 88 14 } //1
		$a_02_2 = {88 0c 02 8b 0d ?? ?? ?? ?? 81 f9 03 02 00 00 75 ?? 89 ?? ?? ?? ?? ?? 40 3b ?? 72 } //1
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=11
 
}