
rule Trojan_Win32_Amadey_MZZ_MTB{
	meta:
		description = "Trojan:Win32/Amadey.MZZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c7 c1 e8 ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 89 45 ?? 8b 45 ?? 01 45 ?? 8b c7 c1 e0 ?? 03 45 ?? 33 45 ?? 33 45 ?? 50 8d 45 ?? 50 e8 ?? ?? ?? ?? 81 3d ?? ?? ?? ?? ?? ?? ?? ?? 74 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}