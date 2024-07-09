
rule Trojan_BAT_AgentTesla_PSMB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {28 05 00 00 2b 6f ?? ?? ?? 0a 00 07 6f ?? ?? ?? 0a 0c 08 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 73 ?? ?? ?? 0a 0d 09 6f ?? ?? ?? 0a 13 04 11 04 28 ?? ?? ?? 0a 13 05 2b 00 11 05 2a } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}