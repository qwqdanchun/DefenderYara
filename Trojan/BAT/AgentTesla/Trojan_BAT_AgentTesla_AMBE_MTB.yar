
rule Trojan_BAT_AgentTesla_AMBE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AMBE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 18 8c ?? 00 00 01 28 ?? 00 00 0a a5 ?? 00 00 01 6f ?? 00 00 0a 00 07 18 8c ?? 00 00 01 28 ?? 00 00 0a a5 ?? 00 00 01 6f ?? 00 00 0a 00 07 72 ?? 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 00 07 6f ?? 00 00 0a 0c 08 06 16 06 8e 69 6f ?? 00 00 0a 0d 17 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}