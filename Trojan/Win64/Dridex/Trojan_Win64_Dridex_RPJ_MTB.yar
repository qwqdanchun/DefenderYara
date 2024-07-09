
rule Trojan_Win64_Dridex_RPJ_MTB{
	meta:
		description = "Trojan:Win64/Dridex.RPJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {41 88 1c 3a 03 8c 24 ?? ?? ?? ?? 66 44 8b 4c 24 ?? 66 41 83 f1 ?? 66 44 89 8c 24 ?? ?? ?? ?? 8b 94 24 ?? ?? ?? ?? 4c 8b 94 24 ?? ?? ?? ?? 4c 89 94 24 ?? ?? ?? ?? 89 8c 24 } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}