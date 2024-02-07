
rule Trojan_BAT_AgentTesla_ENO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ENO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {08 11 07 06 11 07 91 7e 90 01 03 04 11 07 7e 90 01 03 04 6f 90 01 03 0a 5d 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 61 9c 11 07 17 d6 13 07 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {54 6f 49 6e 74 33 32 } //00 00  ToInt32
	condition:
		any of ($a_*)
 
}