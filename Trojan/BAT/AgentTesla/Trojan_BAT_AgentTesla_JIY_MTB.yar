
rule Trojan_BAT_AgentTesla_JIY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JIY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 11 04 06 11 04 18 d8 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 9c 11 04 17 d6 13 04 11 04 09 31 df 90 00 } //01 00 
		$a_01_1 = {00 58 58 58 58 58 58 00 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_3 = {41 72 72 61 79 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_4 = {50 61 72 61 6d 41 72 72 61 79 30 } //01 00 
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}