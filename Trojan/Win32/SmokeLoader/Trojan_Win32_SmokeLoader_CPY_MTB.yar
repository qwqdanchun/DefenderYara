
rule Trojan_Win32_SmokeLoader_CPY_MTB{
	meta:
		description = "Trojan:Win32/SmokeLoader.CPY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b ce c1 e9 ?? 03 4c 24 28 8d 04 33 31 44 24 10 c7 05 ?? ?? ?? ?? ?? ?? ?? ?? c7 05 ?? ?? ?? ?? ?? ?? ?? ?? 89 4c 24 14 8b 44 24 14 31 44 24 10 2b 7c 24 10 81 c3 ?? ?? ?? ?? ff 4c 24 18 0f } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}