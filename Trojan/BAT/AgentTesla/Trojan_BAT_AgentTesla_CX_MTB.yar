
rule Trojan_BAT_AgentTesla_CX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 00 4c 00 6f 00 67 00 69 00 6e 00 } //01 00 
		$a_01_1 = {74 00 62 00 50 00 61 00 73 00 73 00 57 00 6f 00 72 00 64 00 } //01 00 
		$a_01_2 = {44 00 61 00 74 00 61 00 20 00 53 00 6f 00 75 00 72 00 63 00 65 00 3d 00 44 00 45 00 53 00 4b 00 54 00 4f 00 50 00 2d 00 90 00 01 00 08 00 5c 00 90 00 01 00 08 00 } //01 00 
		$a_01_3 = {51 00 75 00 61 00 6e 00 4c 00 79 00 47 00 61 00 72 00 61 00 4f 00 74 00 6f 00 44 00 61 00 74 00 61 00 53 00 65 00 74 00 } //01 00 
		$a_01_4 = {45 00 58 00 45 00 43 00 20 00 64 00 62 00 6f 00 2e 00 55 00 53 00 50 00 5f 00 4c 00 6f 00 67 00 69 00 6e 00 20 00 40 00 75 00 73 00 65 00 72 00 4e 00 61 00 6d 00 65 00 20 00 2c 00 20 00 40 00 70 00 61 00 73 00 73 00 57 00 6f 00 72 00 64 00 } //01 00 
		$a_01_5 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 74 00 65 00 6d 00 70 00 75 00 72 00 69 00 2e 00 6f 00 72 00 67 00 2f 00 51 00 75 00 61 00 6e 00 4c 00 79 00 47 00 61 00 72 00 61 00 4f 00 74 00 6f 00 44 00 61 00 74 00 61 00 53 00 65 00 74 00 2e 00 78 00 73 00 64 00 } //00 00 
	condition:
		any of ($a_*)
 
}