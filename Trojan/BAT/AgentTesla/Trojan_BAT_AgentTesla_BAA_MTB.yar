
rule Trojan_BAT_AgentTesla_BAA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {08 09 08 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 00 73 90 01 03 0a 13 04 11 04 08 6f 90 01 03 0a 17 73 90 01 03 0a 13 05 00 11 05 02 16 02 8e 69 6f 90 01 03 0a 00 11 05 6f 90 01 03 0a 00 00 de 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}