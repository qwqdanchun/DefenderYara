
rule Trojan_Win32_Trickbot_E_MTB{
	meta:
		description = "Trojan:Win32/Trickbot.E!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 06 00 00 "
		
	strings :
		$a_02_0 = {8b 02 8b 4d fc 8d 94 01 ?? ?? 00 00 8b 45 08 89 10 8b 4d 08 8b 11 81 ea ?? ?? 00 00 8b 45 08 89 10 8b e5 5d c3 } //1
		$a_02_1 = {8b 4d fc 8d 94 01 ?? ?? 00 00 8b 45 08 03 10 8b 4d 08 89 11 8b 55 08 8b 02 2d ?? ?? 00 00 8b 4d 08 89 01 8b e5 5d c3 } //1
		$a_02_2 = {8b c0 8b ca 8b c0 a3 ?? ?? ?? 00 8b c0 31 0d ?? ?? ?? 00 8b c0 a1 ?? ?? ?? 00 c7 05 ?? ?? ?? 00 00 00 00 00 01 05 ?? ?? ?? 00 8b 0d ?? ?? ?? 00 8b 15 ?? ?? ?? 00 89 11 5d c3 } //1
		$a_02_3 = {8b c0 8b ca 8b c0 8b d0 33 d1 8b c2 c7 05 ?? ?? ?? 00 00 00 00 00 01 05 ?? ?? ?? 00 8b 0d ?? ?? ?? 00 8b 15 ?? ?? ?? 00 89 11 5d c3 } //1
		$a_02_4 = {8b ff c7 05 ?? ?? ?? 00 00 00 00 00 a1 ?? ?? ?? 00 01 05 ?? ?? ?? 00 8b ff 8b 15 ?? ?? ?? 00 a1 ?? ?? ?? 00 89 02 5f 5d c3 90 0a 4f 00 b8 ?? ?? ?? 00 a1 ?? ?? ?? 00 31 0d ?? ?? ?? 00 8b ff c7 05 ?? ?? ?? 00 00 00 00 00 a1 } //1
		$a_02_5 = {8b ff c7 05 ?? ?? ?? 00 00 00 00 00 01 05 ?? ?? ?? 00 8b ff 8b 15 ?? ?? ?? 00 a1 ?? ?? ?? 00 89 02 5f 5d c3 90 0a 4f 00 b8 ?? ?? ?? 00 a1 ?? ?? ?? 00 33 c1 8b ff c7 05 ?? ?? ?? 00 00 00 00 00 01 05 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=2
 
}