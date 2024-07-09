
rule Trojan_Win32_Racealer_P_MTB{
	meta:
		description = "Trojan:Win32/Racealer.P!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 e8 1e a2 ?? ?? ?? ?? 0f be 0d ?? ?? ?? ?? 83 e9 14 88 0d ?? ?? ?? ?? 0f be 15 ?? ?? ?? ?? 83 ea 14 88 15 ?? ?? ?? ?? 0f be 05 ?? ?? ?? ?? 83 e8 14 a2 } //1
		$a_03_1 = {8b 45 08 8b 08 33 4d ?? 8b 55 08 89 0a } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}