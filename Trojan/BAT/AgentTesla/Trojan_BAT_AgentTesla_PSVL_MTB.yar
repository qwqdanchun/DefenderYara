
rule Trojan_BAT_AgentTesla_PSVL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSVL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 03 00 00 0a 72 01 00 00 70 28 ?? 00 00 0a 6f ?? 00 00 0a 6f ?? 00 00 0a 6f ?? 00 00 0a 6f ?? 00 00 0a 13 04 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}