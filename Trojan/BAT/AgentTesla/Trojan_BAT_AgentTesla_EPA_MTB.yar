
rule Trojan_BAT_AgentTesla_EPA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {02 11 04 91 07 61 06 09 91 61 13 05 08 11 04 11 05 d2 9c 09 03 } //01 00 
		$a_03_1 = {06 02 08 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 84 28 90 01 03 0a 6f 90 01 03 0a 26 00 08 18 d6 0c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}