
rule Trojan_BAT_AgentTesla_ETK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ETK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 11 07 17 da 6f 90 01 03 0a 28 90 01 03 06 11 04 11 07 11 04 6f 90 01 03 0a 5d 6f 90 01 03 0a 28 90 01 03 06 da 13 08 11 05 11 08 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 13 05 11 07 17 d6 13 07 90 00 } //01 00 
		$a_01_1 = {86 06 2d 00 86 06 2d 00 86 06 2d 00 86 06 2d 00 86 } //00 00 
	condition:
		any of ($a_*)
 
}