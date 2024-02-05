
rule Trojan_BAT_AgentTesla_DPA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DPA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 43 46 30 30 31 32 33 31 00 } //01 00 
		$a_01_1 = {00 43 46 32 33 34 30 35 32 00 } //01 00 
		$a_01_2 = {00 43 46 33 32 31 34 38 31 32 33 00 } //01 00 
		$a_01_3 = {00 43 46 33 34 32 34 32 33 35 36 36 35 00 } //01 00 
		$a_01_4 = {00 4c 65 76 65 6c 00 } //01 00 
		$a_01_5 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_6 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_7 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_8 = {54 00 78 00 46 00 69 00 6c 00 65 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00 
		$a_01_9 = {00 54 6f 57 69 6e 33 32 00 } //00 00 
	condition:
		any of ($a_*)
 
}