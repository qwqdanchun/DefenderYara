
rule Trojan_BAT_AgentTesla_MAAZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MAAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {2b 1f 12 0a 28 90 01 01 00 00 0a 13 0b 2b 14 12 0a 28 90 01 01 00 00 0a 13 0b 2b 09 12 0a 28 90 01 01 00 00 0a 13 0b 07 11 0b 6f 90 01 01 00 00 0a 11 09 17 58 13 09 11 09 09 32 aa 90 00 } //01 00 
		$a_01_1 = {64 00 4b 00 36 00 71 00 31 00 69 00 50 00 50 00 47 00 } //00 00 
	condition:
		any of ($a_*)
 
}