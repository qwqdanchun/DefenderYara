
rule Trojan_BAT_AgentTesla_PTIL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTIL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {7e 03 00 00 04 6f 35 00 00 0a 03 0e 07 03 8e 69 6f 36 00 00 0a 0a 06 0b } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}