
rule Trojan_BAT_AgentTesla_PSGK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSGK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {8d 1a 00 00 01 25 d0 33 00 00 04 28 ?? ?? ?? 0a 6f ?? ?? ?? 0a 06 07 6f ?? ?? ?? 0a 17 73 ?? ?? ?? 0a 0c 08 02 16 02 8e 69 6f ?? ?? ?? 0a 08 6f ?? ?? ?? 0a 06 28 ?? ?? ?? 06 0d 28 ?? ?? ?? 06 09 2a } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}