
rule Trojan_BAT_AgentTesla_NUZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NUZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {08 06 17 da 6f 90 01 03 0a 28 90 01 03 06 09 06 09 6f 90 01 03 0a 5d 6f 90 01 03 0a 28 90 01 03 06 da 13 08 07 11 08 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 0b 06 17 d6 0a 06 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}