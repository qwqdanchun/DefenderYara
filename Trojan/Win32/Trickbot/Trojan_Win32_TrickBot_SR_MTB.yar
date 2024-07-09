
rule Trojan_Win32_TrickBot_SR_MTB{
	meta:
		description = "Trojan:Win32/TrickBot.SR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {89 ce 83 e6 03 75 ?? 8b 5d 10 66 01 da 6b d2 02 c1 ca 03 89 55 10 30 10 40 e2 ?? c9 } //1
		$a_02_1 = {83 7d f8 01 7e ?? 8b 4d f8 0f b6 91 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 8b 45 f8 88 ?? ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 8d 44 0a a1 a3 ?? ?? ?? ?? eb } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}