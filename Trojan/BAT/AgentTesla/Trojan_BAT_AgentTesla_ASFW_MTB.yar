
rule Trojan_BAT_AgentTesla_ASFW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {11 05 11 04 5d 13 06 11 05 1f 16 5d 13 07 11 05 17 58 11 04 5d 13 08 07 11 06 91 20 00 01 00 00 13 09 08 11 07 91 61 07 11 08 91 59 11 09 58 11 09 5d 13 0a 07 11 06 11 0a d2 9c 11 05 17 58 13 05 11 05 11 04 09 17 58 5a 32 } //01 00 
		$a_01_1 = {50 00 47 00 4a 00 38 00 34 00 35 00 5a 00 34 00 35 00 44 00 48 00 48 00 46 00 35 00 35 00 35 00 35 00 38 00 43 00 39 00 38 00 50 00 } //00 00  PGJ845Z45DHHF55558C98P
	condition:
		any of ($a_*)
 
}