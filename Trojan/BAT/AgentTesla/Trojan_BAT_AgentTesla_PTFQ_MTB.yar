
rule Trojan_BAT_AgentTesla_PTFQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PTFQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {6f 49 00 00 0a dc 06 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 0a de 03 26 de bb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}