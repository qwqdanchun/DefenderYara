
rule Trojan_BAT_AgentTesla_SPWE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SPWE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 40 00 00 0a 28 90 01 03 0a 13 04 28 90 01 03 0a 12 04 72 4e 03 00 70 28 90 01 03 0a 12 04 72 70 03 00 70 28 90 01 03 0a 28 90 01 03 0a 6f 90 01 03 0a 13 05 28 90 01 03 0a 12 04 72 70 03 00 70 28 90 01 03 0a 6f 90 01 03 0a 13 06 28 90 01 03 06 28 90 01 03 0a 11 05 11 06 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}