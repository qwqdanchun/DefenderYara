
rule Trojan_BAT_AgentTesla_JNC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JNC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {01 25 16 d0 90 01 03 1b 28 90 01 03 0a a2 6f 90 01 03 0a 14 17 8d 90 01 03 01 25 16 28 90 01 03 06 90 00 } //01 00 
		$a_01_1 = {47 5a 69 70 53 74 72 65 61 6d } //01 00 
		$a_01_2 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}