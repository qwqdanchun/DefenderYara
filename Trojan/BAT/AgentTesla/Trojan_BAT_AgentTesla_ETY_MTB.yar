
rule Trojan_BAT_AgentTesla_ETY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ETY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {09 11 09 17 da 6f 90 01 03 0a 28 90 01 03 06 11 04 11 09 11 04 6f 90 01 03 0a 5d 6f 90 01 03 0a 28 90 01 03 06 da 13 0a 11 05 11 0a 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 13 05 90 00 } //0a 00 
		$a_03_1 = {09 11 09 17 da 6f 90 01 03 0a 28 90 01 03 06 11 04 11 09 11 04 6f 90 01 03 0a 5d 6f 90 01 03 0a 28 90 01 03 06 da 90 00 } //01 00 
		$a_01_2 = {86 06 2d 00 86 06 2d 00 86 06 2d 00 86 06 2d 00 86 } //01 00 
		$a_01_3 = {53 00 74 00 72 00 69 00 6e 00 67 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}