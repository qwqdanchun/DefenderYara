
rule Trojan_BAT_AgentTesla_PSZR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSZR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {3a e9 03 00 00 28 90 01 01 00 00 0a 13 2a 28 90 01 01 00 00 0a 13 2b 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}