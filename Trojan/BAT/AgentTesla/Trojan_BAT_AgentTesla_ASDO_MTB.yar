
rule Trojan_BAT_AgentTesla_ASDO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0b 16 0c 2b 1b 07 08 06 08 91 20 90 02 04 28 90 01 01 00 00 06 28 90 01 01 00 00 0a 59 d2 9c 08 17 58 0c 08 06 8e 69 32 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}