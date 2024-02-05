
rule Trojan_BAT_AgentTesla_JLP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JLP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_81_0 = {63 32 65 37 64 35 37 61 2d 66 33 36 35 2d 34 37 30 32 2d 61 37 61 32 2d 61 65 39 30 63 35 63 35 35 61 32 33 } //01 00 
		$a_81_1 = {47 6f 61 74 52 61 69 73 69 6e 67 } //01 00 
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_81_4 = {45 6d 70 74 79 41 72 72 61 79 } //01 00 
		$a_81_5 = {54 68 65 20 4a 6f 6c 6c 79 20 46 61 72 6d 65 72 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}