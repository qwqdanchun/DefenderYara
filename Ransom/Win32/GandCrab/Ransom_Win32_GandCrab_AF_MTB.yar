
rule Ransom_Win32_GandCrab_AF_MTB{
	meta:
		description = "Ransom:Win32/GandCrab.AF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {c1 e3 1d 81 ?? ?? 94 4a c6 41 81 ?? ?? 94 4a c6 41 83 ?? ?? 40 8b 55 ?? a1 ?? ?? ?? ?? 8d 4d ?? 51 8b 0d ?? ?? ?? ?? 52 50 51 ff 15 ?? ?? ?? ?? e8 ?? ?? ff ff } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}