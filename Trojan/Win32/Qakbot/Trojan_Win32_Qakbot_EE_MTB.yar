
rule Trojan_Win32_Qakbot_EE_MTB{
	meta:
		description = "Trojan:Win32/Qakbot.EE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b d8 6a 00 e8 ?? ?? ?? ?? 03 d8 a1 ?? ?? ?? ?? 01 18 a1 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 03 05 ?? ?? ?? ?? 48 8b 15 ?? ?? ?? ?? 33 02 a3 ?? ?? ?? ?? a1 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 89 02 33 c0 a3 ?? ?? ?? ?? a1 ?? ?? ?? ?? 83 c0 04 03 05 ?? ?? ?? ?? a3 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}