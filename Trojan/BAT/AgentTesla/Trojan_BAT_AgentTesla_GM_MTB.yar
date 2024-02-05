
rule Trojan_BAT_AgentTesla_GM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {44 41 4c 5f 44 6f 77 6e 6c 6f 61 64 5f 4c 69 73 74 5f 47 65 6e 65 72 61 74 6f 72 } //01 00 
		$a_81_1 = {41 63 74 69 76 69 74 79 20 4c 6f 67 67 65 72 } //01 00 
		$a_81_2 = {4d 61 69 6e 5f 53 63 72 65 65 6e } //01 00 
		$a_81_3 = {50 6f 73 69 74 69 6f 6e } //01 00 
		$a_81_4 = {4c 65 6e 67 74 68 } //01 00 
		$a_81_5 = {69 6d 69 6d 69 6d 69 6d 69 6d } //01 00 
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_7 = {41 63 74 69 76 61 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}