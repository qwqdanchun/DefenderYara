
rule Trojan_BAT_AgentTesla_MBJR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBJR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {03 04 61 05 59 20 0a 01 00 00 58 1f 0a 59 0a 2b 00 } //01 00 
		$a_01_1 = {07 11 09 11 0e 20 00 01 00 00 5d d2 9c 00 11 08 17 59 13 08 } //01 00 
		$a_01_2 = {53 00 44 00 35 00 35 00 37 00 49 00 38 00 34 00 47 00 37 00 5a 00 59 00 34 00 37 00 45 00 37 00 46 00 5a 00 35 00 32 00 37 00 59 00 } //01 00  SD557I84G7ZY47E7FZ527Y
		$a_01_3 = {32 34 65 32 61 35 39 35 30 36 32 34 } //00 00  24e2a5950624
	condition:
		any of ($a_*)
 
}