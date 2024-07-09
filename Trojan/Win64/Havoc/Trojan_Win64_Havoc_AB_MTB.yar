
rule Trojan_Win64_Havoc_AB_MTB{
	meta:
		description = "Trojan:Win64/Havoc.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b ca 2b 08 01 0b 48 8b 05 ?? ?? ?? ?? 8b 88 ?? ?? ?? ?? 8b 05 ?? ?? ?? ?? 03 ca 05 ?? ?? ?? ?? 41 8b d0 03 c8 c1 ea 08 89 0d ?? ?? ?? ?? 48 63 4b ?? 48 8b 83 ?? ?? ?? ?? 88 14 01 ff 43 ?? 48 8b 05 ?? ?? ?? ?? 8b 08 31 4b ?? 48 8b 0d ?? ?? ?? ?? 8b 41 28 2d ?? ?? ?? ?? 01 81 ?? ?? ?? ?? 48 8b 05 ?? ?? ?? ?? 48 63 53 ?? 48 8b 88 ?? ?? ?? ?? 44 88 04 0a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}