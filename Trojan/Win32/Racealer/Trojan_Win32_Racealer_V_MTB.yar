
rule Trojan_Win32_Racealer_V_MTB{
	meta:
		description = "Trojan:Win32/Racealer.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {83 e8 1e a2 ?? ?? ?? ?? 0f be 0d ?? ?? ?? ?? 83 e9 14 88 0d ?? ?? ?? ?? 0f be 15 ?? ?? ?? ?? 83 ea 14 88 15 ?? ?? ?? ?? 0f be 05 ?? ?? ?? ?? 83 e8 1e a2 } //1
		$a_00_1 = {03 55 08 8a 82 36 23 01 00 88 01 8b e5 5d c2 04 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1) >=2
 
}