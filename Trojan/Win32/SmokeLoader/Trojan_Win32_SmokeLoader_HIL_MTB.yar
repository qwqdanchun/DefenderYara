
rule Trojan_Win32_SmokeLoader_HIL_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.HIL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b d6 d3 ea 03 d5 89 54 24 ?? 8b 44 24 ?? 31 44 24 ?? 8b 44 24 ?? 8b 4c 24 ?? 50 51 8d 4c 24 ?? e8 ?? ?? ?? ?? 8b 44 24 ?? 89 44 24 ?? 8b 44 24 ?? 29 44 24 ?? 8b 44 24 ?? 89 44 24 ?? 81 44 24 ?? ?? ?? ?? ?? 83 ef ?? 0f 85 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}