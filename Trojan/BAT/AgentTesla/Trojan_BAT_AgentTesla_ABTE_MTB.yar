
rule Trojan_BAT_AgentTesla_ABTE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABTE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {11 08 11 01 11 07 18 6f 90 01 02 00 0a 1f 10 28 90 01 03 0a b4 6f 90 01 02 00 0a 38 90 01 02 00 00 28 90 01 03 0a 11 08 28 90 01 03 06 6f 90 01 02 00 0a 13 03 90 00 } //01 00 
		$a_01_1 = {50 00 72 00 69 00 73 00 63 00 69 00 6c 00 6c 00 61 00 5f 00 54 00 61 00 79 00 6c 00 6f 00 72 00 } //00 00  Priscilla_Taylor
	condition:
		any of ($a_*)
 
}