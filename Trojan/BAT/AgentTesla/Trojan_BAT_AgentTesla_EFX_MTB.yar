
rule Trojan_BAT_AgentTesla_EFX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EFX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 11 04 91 13 05 08 04 03 8e 69 5d d6 04 5f 13 06 03 08 03 8e 69 5d 91 13 07 11 07 11 06 28 90 01 03 06 13 08 11 05 11 08 28 90 01 03 06 13 09 07 11 09 b4 6f 90 01 03 0a 00 08 17 d6 0c 00 11 04 17 d6 13 04 90 00 } //01 00 
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 } //01 00  System.
		$a_01_2 = {47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 73 00 } //01 00  GetMethods
		$a_01_3 = {47 00 65 00 74 00 54 00 79 00 70 00 65 00 73 00 } //00 00  GetTypes
	condition:
		any of ($a_*)
 
}