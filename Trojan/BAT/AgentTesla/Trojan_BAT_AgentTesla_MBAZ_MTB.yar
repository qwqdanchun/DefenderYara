
rule Trojan_BAT_AgentTesla_MBAZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 11 08 08 11 08 9a 1f 10 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 00 11 08 17 58 13 08 11 08 08 8e 69 fe 04 13 09 11 09 2d d9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}