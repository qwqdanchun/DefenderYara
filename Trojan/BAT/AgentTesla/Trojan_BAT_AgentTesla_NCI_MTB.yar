
rule Trojan_BAT_AgentTesla_NCI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NCI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 28 90 01 03 0a 03 6f 90 01 03 0a 6f 90 01 03 0a 0a 7e 90 01 03 04 06 6f 90 01 03 0a 00 7e 90 01 03 04 18 6f 90 01 03 0a 00 7e 90 01 03 04 6f 90 01 03 0a 80 90 01 03 04 02 28 90 01 03 06 0c 7e 90 01 03 04 6f 90 01 03 0a 00 08 0d 2b 00 09 2a 90 00 } //01 00 
		$a_01_1 = {00 58 58 58 58 58 58 58 00 } //00 00 
	condition:
		any of ($a_*)
 
}