
rule Trojan_BAT_AgentTesla_BO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_02_0 = {0a 0b 07 06 1f 10 6f ?? ?? ?? ?? 6f ?? ?? ?? ?? 07 06 1f 10 6f ?? ?? ?? ?? 6f ?? ?? ?? ?? 07 6f ?? ?? ?? ?? 02 16 02 8e 69 6f ?? ?? ?? ?? 0c 08 8e 69 1f 11 da 17 d6 17 da 17 d6 8d ?? ?? ?? ?? 0d 08 1f 10 09 16 08 8e 69 1f 10 da 28 ?? ?? ?? ?? 09 2a } //10
	condition:
		((#a_02_0  & 1)*10) >=10
 
}