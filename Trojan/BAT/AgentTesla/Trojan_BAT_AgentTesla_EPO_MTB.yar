
rule Trojan_BAT_AgentTesla_EPO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EPO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 07 02 07 91 03 07 03 6f 90 01 03 0a 5d 6f 90 01 03 0a 61 d2 9c 00 07 17 58 0b 90 00 } //01 00 
		$a_01_1 = {40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 4c 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 6f 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 61 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 64 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 } //00 00 
	condition:
		any of ($a_*)
 
}