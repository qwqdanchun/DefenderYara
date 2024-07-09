
rule Trojan_Win64_Bumblebee_ZMH_MTB{
	meta:
		description = "Trojan:Win64/Bumblebee.ZMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {33 d6 09 15 ?? ?? ?? ?? 44 31 04 03 48 83 c3 04 48 8b 05 ?? ?? ?? ?? 44 8b 05 ?? ?? ?? ?? 44 03 80 ?? ?? ?? ?? 8b 05 ?? ?? ?? ?? 33 05 ?? ?? ?? ?? 33 05 ?? ?? ?? ?? 35 ?? ?? ?? ?? 44 89 05 ?? ?? ?? ?? 89 05 ?? ?? ?? ?? 48 81 fb ?? ?? ?? ?? 7c ?? 90 0a 65 00 8b 15 ?? ?? ?? ?? 03 15 ?? ?? ?? ?? 48 8b 05 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}