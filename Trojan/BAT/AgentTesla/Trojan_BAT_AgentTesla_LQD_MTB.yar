
rule Trojan_BAT_AgentTesla_LQD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LQD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0a 13 04 11 04 6c 23 90 01 07 3f 5b 28 90 01 03 0a b7 28 90 01 03 0a 13 06 12 06 28 90 01 03 0a 13 05 07 11 05 28 90 01 03 0a 0b 90 02 02 09 17 d6 0d 09 08 6f 90 01 03 0a fe 04 13 07 11 07 2d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}