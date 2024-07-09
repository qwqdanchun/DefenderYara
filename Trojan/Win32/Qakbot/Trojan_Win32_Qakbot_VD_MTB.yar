
rule Trojan_Win32_Qakbot_VD_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.VD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_01_0 = {a1 e4 dc 6a 00 05 d0 3b 03 00 a3 c0 dc 6a 00 a1 74 df 6a 00 } //1
		$a_03_1 = {8b d8 8b 35 ?? ?? ?? ?? 33 f1 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 01 35 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 08 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}