
rule Trojan_Win32_Zbot_DED_MTB{
	meta:
		description = "Trojan:Win32/Zbot.DED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {33 f6 2b c2 1b f1 a3 ?? ?? ?? ?? 0f b6 0d ?? ?? ?? ?? 69 c9 ec e7 00 00 03 0d ?? ?? ?? ?? 89 0d } //1
		$a_02_1 = {6b d2 61 03 ca 0f b6 05 ?? ?? ?? ?? 2b c1 a2 ?? ?? ?? ?? 8b 4d dc 83 e9 01 89 4d dc 8b 15 ?? ?? ?? ?? 6b d2 61 33 c0 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}