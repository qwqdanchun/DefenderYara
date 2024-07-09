
rule Trojan_Win32_Qshell_RT_MTB{
	meta:
		description = "Trojan:Win32/Qshell.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {81 ea 18 64 00 00 89 15 ?? ?? ?? ?? a1 ?? ?? ?? ?? 03 45 ?? 03 05 ?? ?? ?? ?? a3 ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 03 4d ?? 8b 15 ?? ?? ?? ?? 2b d1 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win32_Qshell_RT_MTB_2{
	meta:
		description = "Trojan:Win32/Qshell.RT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {80 f1 bd 3a 0d ?? ?? ?? ?? 33 c0 89 85 ?? ?? ?? ?? 8b 95 ?? ?? ?? ?? 3b 95 ?? ?? ?? ?? 7f ?? 0f be 0d ?? ?? ?? ?? 3b 0d ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? 03 85 ?? ?? ?? ?? 89 85 ?? ?? ?? ?? 8b 95 ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 31 0a 83 ?? ?? ?? ?? ?? 04 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}