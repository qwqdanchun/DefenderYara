
rule Trojan_BAT_AgentTesla_ASDC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASDC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8e 69 17 da 13 10 16 13 11 2b 25 11 07 11 11 17 8d 90 01 01 00 00 01 25 16 11 06 11 11 9a 1f 10 28 90 01 01 00 00 0a 9c 6f 90 01 01 00 00 0a 00 11 11 17 d6 13 11 11 11 11 10 31 90 00 } //01 00 
		$a_01_1 = {53 00 48 00 59 00 47 00 46 00 42 00 4a 00 4b 00 48 00 47 00 46 00 4a 00 20 00 48 00 47 00 4a 00 4b 00 53 00 46 00 20 00 47 00 4a 00 4b 00 46 00 47 00 48 00 4b 00 53 00 4a 00 46 00 47 00 20 00 48 00 4a 00 47 00 46 00 47 00 53 00 4a 00 46 00 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}