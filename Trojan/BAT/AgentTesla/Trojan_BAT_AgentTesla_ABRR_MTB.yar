
rule Trojan_BAT_AgentTesla_ABRR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABRR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 08 04 8e 69 5d 04 08 04 8e 69 5d 91 07 08 07 8e 69 5d 91 61 28 90 01 03 0a 04 08 1e 58 1d 59 04 8e 69 5d 91 59 20 90 01 03 00 58 18 58 20 90 01 03 00 5d d2 9c 08 16 2d 02 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}