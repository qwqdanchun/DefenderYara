
rule Trojan_BAT_AgentTesla_LND_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 13 04 11 04 6c 23 90 01 07 3f 5b 28 90 01 03 0a b7 28 90 01 03 0a 13 06 12 06 28 90 01 03 0a 13 05 07 11 05 6f 90 01 03 0a 26 00 09 17 d6 0d 09 08 6f 90 01 03 0a fe 04 13 07 11 07 2d b7 90 00 } //01 00 
		$a_01_1 = {00 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_LND_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.LND!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 09 11 04 6f 90 01 03 0a 13 07 06 09 11 04 6f 90 01 03 0a 13 08 11 08 28 90 01 03 0a 13 09 08 07 72 90 01 03 70 28 90 01 03 0a 72 90 01 03 70 20 90 01 03 00 14 14 17 8d 90 01 03 01 25 16 11 09 8c 90 01 03 01 a2 6f 90 01 03 0a a5 90 01 03 01 9c 00 11 04 17 58 13 04 11 04 06 6f 90 01 03 0a fe 04 13 0a 11 0a 2d 96 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}