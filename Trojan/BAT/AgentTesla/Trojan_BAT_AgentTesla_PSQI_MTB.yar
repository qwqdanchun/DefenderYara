
rule Trojan_BAT_AgentTesla_PSQI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSQI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {6f 4a 00 00 0a 72 d8 34 05 70 6f 90 01 03 0a 73 90 01 03 0a 0c 08 6f 90 01 03 0a 16 6a 6f 90 01 03 0a 08 08 6f 90 01 03 0a 6f 90 01 03 0a 69 90 01 03 00 0a 0d 08 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}