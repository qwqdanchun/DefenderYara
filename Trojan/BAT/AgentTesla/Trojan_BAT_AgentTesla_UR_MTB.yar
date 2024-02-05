
rule Trojan_BAT_AgentTesla_UR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.UR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {74 00 72 00 61 00 6e 00 73 00 66 00 65 00 72 00 2e 00 73 00 68 00 2f 00 67 00 65 00 74 00 2f 00 59 00 67 00 57 00 63 00 6c 00 59 00 2f 00 65 00 66 00 61 00 78 00 2d 00 30 00 37 00 30 00 34 00 32 00 30 00 32 00 32 00 5f 00 56 00 68 00 7a 00 6c 00 68 00 78 00 69 00 64 00 2e 00 70 00 6e 00 67 00 } //0a 00 
		$a_01_1 = {74 00 72 00 69 00 65 00 75 00 74 00 69 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 61 00 64 00 65 00 72 00 2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 73 00 2f 00 4e 00 45 00 57 00 5f 00 4f 00 52 00 44 00 45 00 52 00 5f 00 38 00 30 00 38 00 36 00 41 00 5f 00 34 00 36 00 31 00 41 00 5f 00 45 00 76 00 66 00 77 00 64 00 65 00 70 00 6e 00 2e 00 6a 00 70 00 67 00 } //01 00 
		$a_01_2 = {47 65 74 54 79 70 65 73 } //01 00 
		$a_01_3 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //01 00 
		$a_01_4 = {54 6f 41 72 72 61 79 } //01 00 
		$a_01_5 = {54 6f 53 74 72 69 6e 67 } //01 00 
		$a_01_6 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //01 00 
		$a_01_7 = {57 65 62 52 65 71 75 65 73 74 } //00 00 
	condition:
		any of ($a_*)
 
}