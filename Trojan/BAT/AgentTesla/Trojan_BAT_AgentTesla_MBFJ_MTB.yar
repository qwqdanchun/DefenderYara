
rule Trojan_BAT_AgentTesla_MBFJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBFJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {11 11 58 13 19 11 0d 11 12 91 13 1a 11 1a 11 13 11 08 1f 16 5d 91 61 13 1b 11 1b 11 19 59 13 1c 11 0d 11 12 11 1c 11 11 5d d2 9c 11 08 17 58 13 08 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_MBFJ_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.MBFJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 04 18 6f 90 01 01 00 00 0a 13 05 07 11 04 18 5b 11 05 1f 10 28 90 01 01 00 00 0a 9c 00 11 04 18 58 13 04 11 04 06 6f 90 01 01 00 00 0a fe 04 13 06 11 06 2d ce 90 00 } //01 00 
		$a_01_1 = {2a 00 33 00 2a 00 45 00 32 00 30 00 30 00 2a 00 33 00 2a 00 45 00 32 00 2a 00 33 00 33 00 2a 00 45 00 32 00 2a 00 32 00 33 00 2a 00 2a 00 2a 00 45 00 36 00 2a 00 46 00 36 00 2a 00 39 00 36 00 2a 00 33 00 37 00 2a 00 } //00 00  *3*E200*3*E2*33*E2*23***E6*F6*96*37*
	condition:
		any of ($a_*)
 
}