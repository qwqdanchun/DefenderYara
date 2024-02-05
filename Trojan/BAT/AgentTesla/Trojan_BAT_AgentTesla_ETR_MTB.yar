
rule Trojan_BAT_AgentTesla_ETR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ETR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 36 61 39 34 63 37 34 2d 31 63 37 31 2d 34 65 62 65 2d 39 36 66 31 2d 61 38 63 66 33 36 38 33 34 36 66 33 } //01 00 
		$a_01_1 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_2 = {00 47 65 74 4d 65 74 68 6f 64 00 } //01 00 
		$a_01_3 = {00 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 00 } //01 00 
		$a_01_4 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //01 00 
		$a_01_5 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_ETR_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.ETR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 43 6f 6e 73 74 61 6e 74 41 74 74 72 69 62 75 74 65 00 } //01 00 
		$a_01_1 = {00 48 61 73 68 74 61 62 6c 65 00 } //01 00 
		$a_01_2 = {00 43 6f 72 65 56 69 65 77 00 } //01 00 
		$a_01_3 = {00 41 73 79 6e 63 4c 6f 63 61 6c 00 } //01 00 
		$a_01_4 = {00 45 76 65 6e 74 53 6c 69 6d 00 } //01 00 
		$a_01_5 = {00 43 6f 6e 73 74 72 75 63 74 69 6f 6e 43 61 6c 6c 00 } //01 00 
		$a_01_6 = {00 43 6f 6e 74 65 78 74 4d 61 6e 61 67 65 72 00 } //01 00 
		$a_01_7 = {00 43 6f 64 65 50 61 67 65 00 } //01 00 
		$a_01_8 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //01 00 
		$a_01_9 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}