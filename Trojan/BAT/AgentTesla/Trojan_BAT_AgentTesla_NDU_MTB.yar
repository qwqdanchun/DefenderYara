
rule Trojan_BAT_AgentTesla_NDU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NDU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 0c 08 28 90 01 03 0a 03 6f 90 01 03 0a 6f 90 01 03 0a 0b 08 6f 90 01 03 0a 00 73 90 01 03 0a 0d 09 07 6f 90 01 03 0a 00 09 04 6f 90 01 03 0a 00 09 05 6f 90 01 03 0a 00 09 6f 90 01 03 0a 13 04 11 04 02 16 02 8e 69 6f 90 01 03 0a 13 05 09 6f 90 01 03 0a 00 11 05 0a 2b 00 90 00 } //01 00 
		$a_01_1 = {55 00 6c 00 58 00 49 00 6b 00 62 00 6e 00 70 00 30 00 56 00 4e 00 75 00 59 00 75 00 44 00 51 00 6f 00 2f 00 51 00 55 00 70 00 46 00 63 00 6c 00 42 00 70 00 57 } //00 00 
	condition:
		any of ($a_*)
 
}