
rule Trojan_Win64_Bumblebee_JD_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.JD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {41 8b 0c 80 41 31 0c ?? 8b 8b ?? ?? ?? ?? 81 e1 ?? ?? ?? ?? 7d ?? 2b cf 83 c9 ?? 03 cf 48 8b 93 ?? ?? ?? ?? 48 63 83 ?? ?? ?? ?? 44 8b 04 82 85 c9 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}
rule Trojan_Win64_Bumblebee_JD_MTB_2{
	meta:
		description = "Trojan:Win64/Bumblebee.JD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {44 88 04 01 ff 43 ?? 8b 83 ?? ?? ?? ?? 83 e8 ?? 09 83 ?? ?? ?? ?? 8b 43 ?? 2b 83 ?? ?? ?? ?? 33 43 ?? 35 ?? ?? ?? ?? 89 43 ?? 8b 43 ?? 03 c0 2b 43 ?? 2d ?? ?? ?? ?? 89 43 ?? 49 81 f9 ?? ?? ?? ?? 0f 8c } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}