
rule Trojan_BAT_AgentTesla_PSHI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PSHI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {28 16 00 00 0a 72 01 00 00 70 28 04 00 00 06 6f 90 01 03 0a 0a 06 6f 90 01 03 0a 0b 07 18 5b 8d 21 00 00 01 0c 16 0d 2b 18 08 09 18 5b 06 09 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 9c 09 18 58 0d 09 07 32 e4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}