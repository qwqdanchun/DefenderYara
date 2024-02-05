
rule Trojan_BAT_AgentTesla_B_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.B!MTB,SIGNATURE_TYPE_PEHSTR,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 61 73 65 33 32 } //01 00 
		$a_01_1 = {47 00 41 00 4d 00 45 00 4f 00 56 00 45 00 52 00 } //01 00 
		$a_01_2 = {57 69 6e 66 6f 72 6d 4d 65 67 61 6d 61 6e } //01 00 
		$a_01_3 = {44 65 63 6f 64 65 } //01 00 
		$a_01_4 = {5a 00 5f 00 64 00 61 00 73 00 68 00 5f 00 61 00 74 00 6b 00 } //01 00 
		$a_01_5 = {5a 00 5f 00 61 00 74 00 74 00 61 00 63 00 6b 00 } //01 00 
		$a_01_6 = {70 6c 44 72 6f 70 6e 46 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}