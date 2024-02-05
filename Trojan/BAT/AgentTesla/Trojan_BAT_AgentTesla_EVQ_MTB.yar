
rule Trojan_BAT_AgentTesla_EVQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EVQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 46 00 5a 00 54 00 39 00 4f 00 53 00 30 00 35 00 58 00 50 00 52 00 32 00 47 00 38 00 30 00 35 00 38 00 35 00 53 00 48 00 47 00 } //01 00 
		$a_01_1 = {51 00 75 00 65 00 75 00 65 00 } //01 00 
		$a_01_2 = {43 6f 6e 73 74 72 75 63 74 69 6f 6e 43 61 6c 6c } //01 00 
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}