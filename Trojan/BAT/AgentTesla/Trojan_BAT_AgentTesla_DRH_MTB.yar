
rule Trojan_BAT_AgentTesla_DRH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DRH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 00 47 00 65 00 74 00 4d 00 65 00 74 00 68 00 6f 00 64 00 20 00 } //01 00 
		$a_01_1 = {20 00 49 00 6e 00 76 00 6f 00 6b 00 65 00 20 00 } //01 00 
		$a_01_2 = {00 54 30 30 30 31 00 } //01 00 
		$a_01_3 = {00 54 30 30 30 32 00 } //01 00 
		$a_01_4 = {00 54 30 30 30 33 00 } //01 00 
		$a_01_5 = {00 54 30 30 30 34 00 } //01 00 
		$a_01_6 = {00 54 30 30 30 35 00 } //01 00 
		$a_01_7 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //01 00 
		$a_01_8 = {00 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 00 } //01 00 
		$a_01_9 = {20 00 42 00 75 00 6e 00 69 00 66 00 75 00 5f 00 54 00 65 00 78 00 74 00 42 00 6f 00 78 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}