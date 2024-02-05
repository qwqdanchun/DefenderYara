
rule Trojan_BAT_AgentTesla_WLD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.WLD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8e 69 5d 91 07 06 1a 58 4a 07 8e 69 5d 91 61 28 90 01 03 0a 03 06 1a 58 4a 17 58 03 8e 69 5d 91 59 20 90 01 03 00 58 20 90 01 03 00 5d d2 9c 06 1a 58 06 1a 58 4a 17 58 54 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00 
		$a_01_2 = {54 6f 49 6e 74 33 32 } //00 00 
	condition:
		any of ($a_*)
 
}