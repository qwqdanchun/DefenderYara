
rule Trojan_BAT_AgentTesla_EKW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EKW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 06 9a 1e 2d 0e 26 11 07 6f 90 01 03 0a 13 04 16 0b 2b 4b 13 07 2b ef 11 04 07 9a 13 08 11 08 6f 90 01 03 0a 13 05 16 0c 2b 29 11 05 08 9a 13 06 11 06 6f 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 13 09 11 09 2c 08 11 06 28 90 01 03 06 26 08 17 58 0c 90 00 } //01 00 
		$a_01_1 = {00 47 65 74 54 79 70 65 } //01 00 
		$a_01_2 = {2d 00 65 00 6e 00 63 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}