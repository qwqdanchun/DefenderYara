
rule Trojan_BAT_AgentTesla_PTEY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTEY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {73 7a 00 00 0a 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 0c 00 28 90 01 01 00 00 0a 72 62 0d 00 70 18 17 8d 16 00 00 01 25 16 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}