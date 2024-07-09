
rule Trojan_Win64_IcedID_ADD_MTB{
	meta:
		description = "Trojan:Win64/IcedID.ADD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 04 24 eb ?? 8b 4c 24 ?? 33 c8 eb ?? 83 84 24 ?? ?? ?? ?? ?? c7 04 24 ?? ?? ?? ?? e9 ?? ?? ?? ?? e9 ?? ?? ?? ?? 48 ?? ?? ?? ?? ?? ?? ?? 0f b6 04 01 eb ?? 99 f7 bc 24 ?? ?? ?? ?? eb ?? 83 44 24 ?? ?? c7 84 24 ?? ?? ?? ?? ?? ?? ?? ?? eb ?? 8b c2 48 ?? eb ?? 48 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}