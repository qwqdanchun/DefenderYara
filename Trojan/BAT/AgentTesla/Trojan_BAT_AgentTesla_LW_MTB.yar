
rule Trojan_BAT_AgentTesla_LW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 24 00 00 0a 0a 73 25 00 00 0a 0c 06 08 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 6f 90 01 03 0a 6f 90 01 03 0a 06 18 6f 90 01 03 0a 06 6f 90 01 03 0a 13 04 02 0d 11 04 09 16 09 8e b7 6f 90 01 03 0a 0b de 11 de 0f 25 28 90 01 03 0a 13 05 28 90 01 03 0a de 00 07 2a 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}