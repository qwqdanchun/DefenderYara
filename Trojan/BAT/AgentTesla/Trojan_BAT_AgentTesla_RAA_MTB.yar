
rule Trojan_BAT_AgentTesla_RAA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 6e 69 74 69 61 6c 69 7a 65 43 6f 6d 70 6f 6e 65 6e 74 } //01 00 
		$a_01_1 = {58 35 30 39 43 6f 6e 73 74 61 6e 74 73 } //01 00 
		$a_01_2 = {46 6f 72 6d 5f 68 61 73 68 46 75 6e 63 74 69 6f 6e 73 } //01 00 
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_01_4 = {49 53 75 70 70 6f 72 74 49 6e 69 74 69 61 6c 69 7a 65 } //01 00 
		$a_01_5 = {6d 5f 61 69 48 61 73 68 65 73 } //01 00 
		$a_00_6 = {53 00 65 00 6c 00 65 00 63 00 74 00 6f 00 72 00 58 00 } //00 00 
	condition:
		any of ($a_*)
 
}