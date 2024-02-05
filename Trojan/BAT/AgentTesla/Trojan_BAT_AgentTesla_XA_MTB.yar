
rule Trojan_BAT_AgentTesla_XA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.XA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 07 11 08 6f 90 01 03 0a 13 09 11 04 11 09 28 90 01 03 0a 11 05 da 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 13 04 00 11 08 17 d6 13 08 11 08 11 07 6f 90 01 03 0a fe 04 13 0a 11 0a 2d c0 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 49 6d 61 67 65 46 72 6f 6d 42 61 73 65 36 34 } //01 00 
		$a_01_2 = {42 61 73 65 36 34 44 61 74 61 } //01 00 
		$a_01_3 = {53 74 72 52 65 76 65 72 73 65 } //00 00 
	condition:
		any of ($a_*)
 
}