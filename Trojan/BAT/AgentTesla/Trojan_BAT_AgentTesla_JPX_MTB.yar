
rule Trojan_BAT_AgentTesla_JPX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JPX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 02 07 93 03 07 03 8e 69 5d 93 61 28 90 01 03 0a 6f 90 01 03 0a 26 07 17 58 0b 07 02 8e 69 90 00 } //01 00 
		$a_01_1 = {54 6f 53 74 72 69 6e 67 } //00 00  ToString
	condition:
		any of ($a_*)
 
}