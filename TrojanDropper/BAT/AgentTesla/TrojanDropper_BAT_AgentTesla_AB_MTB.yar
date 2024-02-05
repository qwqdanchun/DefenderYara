
rule TrojanDropper_BAT_AgentTesla_AB_MTB{
	meta:
		description = "TrojanDropper:BAT/AgentTesla.AB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {08 00 00 04 7e 06 00 00 04 7f 08 00 00 04 28 23 00 00 0a 28 24 00 00 0a 6f 25 00 00 0a 28 24 00 00 0a 28 26 00 00 0a 80 07 00 00 04 28 27 00 00 0a 72 17 00 00 70 28 28 00 00 0a 7f 08 00 00 04 28 23 00 00 0a 28 29 00 00 0a 28 24 00 00 0a 18 73 2a 00 00 0a 80 0a 00 00 04 7e 0a 00 00 04 7e 07 00 00 04 16 7e 07 00 00 04 8e b7 6f 2b 00 00 0a 7e 0a 00 00 04 6f 2c 00 00 0a } //05 00 
		$a_01_1 = {72 1b 00 00 70 17 8d 03 00 00 01 0d 09 16 28 27 00 00 0a 72 17 00 00 70 28 28 00 00 0a 7f 08 00 00 04 28 23 00 00 0a 28 29 00 00 0a a2 09 } //00 00 
	condition:
		any of ($a_*)
 
}