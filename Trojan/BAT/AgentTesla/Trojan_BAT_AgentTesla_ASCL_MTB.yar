
rule Trojan_BAT_AgentTesla_ASCL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASCL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {0c 16 13 06 2b 23 00 07 11 06 18 6f 90 01 01 01 00 0a 13 07 08 11 06 18 5b 11 07 1f 10 28 90 01 01 01 00 0a d2 9c 00 11 06 18 58 13 06 11 06 07 6f 90 01 01 01 00 0a fe 04 13 08 11 08 2d cd 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}