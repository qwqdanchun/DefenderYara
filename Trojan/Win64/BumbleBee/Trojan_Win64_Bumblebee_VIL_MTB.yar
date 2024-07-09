
rule Trojan_Win64_Bumblebee_VIL_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.VIL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b c7 80 c1 0a ff c7 22 d1 85 c0 74 10 49 8b 4a ?? 8a 04 0e 02 c0 0a c2 88 04 0e eb 07 49 8b 42 ?? 88 14 06 49 8b 82 ?? ?? ?? ?? 48 31 68 ?? 49 8b 82 ?? ?? ?? ?? 48 0f af 05 ?? ?? ?? ?? 49 8b 92 08 03 00 00 49 89 82 ?? ?? ?? ?? 49 8b 82 ?? ?? ?? ?? 48 8b 88 ?? ?? ?? ?? 48 81 c1 ?? ?? ?? ?? 48 31 8a ?? ?? ?? ?? 49 8b 82 c8 03 00 00 48 8b 88 ?? ?? ?? ?? 48 81 e9 ?? ?? ?? ?? 48 63 c7 48 3b c1 75 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}