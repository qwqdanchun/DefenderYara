
rule Trojan_BAT_AgentTesla_ABTY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABTY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 03 00 "
		
	strings :
		$a_03_0 = {72 0f 00 00 70 28 90 01 01 00 00 06 0a 28 90 01 01 00 00 0a 06 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 06 0b dd 90 01 01 00 00 00 26 de d6 07 2a 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}