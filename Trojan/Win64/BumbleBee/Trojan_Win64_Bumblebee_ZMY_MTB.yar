
rule Trojan_Win64_Bumblebee_ZMY_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.ZMY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 c8 01 4b ?? 8b 43 ?? 48 8b 8b ?? ?? ?? ?? 35 ?? ?? ?? ?? 09 83 ?? ?? ?? ?? 8b 83 ?? ?? ?? ?? 33 83 ?? ?? ?? ?? 35 ?? ?? ?? ?? 89 83 ?? ?? ?? ?? 8b 83 ?? ?? ?? ?? 2b 43 ?? 2d ?? ?? ?? ?? 01 83 ?? ?? ?? ?? 8b 43 ?? 31 04 11 48 83 c2 ?? 8b 83 ?? ?? ?? ?? 01 43 ?? 8b 83 ?? ?? ?? ?? 01 43 ?? 48 81 fa ?? ?? ?? ?? 0f 8c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}