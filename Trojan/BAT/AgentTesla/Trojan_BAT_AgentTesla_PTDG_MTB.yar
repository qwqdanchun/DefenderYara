
rule Trojan_BAT_AgentTesla_PTDG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTDG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {75 07 00 00 1b 0b 28 90 01 01 01 00 06 20 81 7c 9e 98 28 90 01 01 00 00 2b 28 90 01 01 01 00 06 0c 16 0d 11 37 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}