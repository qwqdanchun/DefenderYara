
rule Trojan_BAT_AgentTesla_EQK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EQK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {5d 03 04 20 ?? ?? ?? ?? 5d 91 02 04 1f 16 5d ?? ?? ?? ?? ?? 61 ?? ?? ?? ?? ?? 03 04 17 58 20 ?? ?? ?? ?? 5d 91 ?? ?? ?? ?? ?? 59 20 00 01 00 00 58 20 00 01 00 00 90 09 07 00 03 04 20 } //1
		$a_03_1 = {5d 07 09 20 ?? ?? ?? ?? 5d 91 08 09 1f 16 5d ?? ?? ?? ?? ?? 61 ?? ?? ?? ?? ?? 07 09 17 58 20 ?? ?? ?? ?? 5d 91 ?? ?? ?? ?? ?? 59 20 00 01 00 00 58 20 00 01 00 00 90 09 07 00 07 09 20 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}