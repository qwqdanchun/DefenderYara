
rule Trojan_BAT_AgentTesla_MTE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MTE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {0b 07 06 07 28 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 14 6f ?? ?? ?? ?? 26 2b 02 2b 01 00 2a } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}