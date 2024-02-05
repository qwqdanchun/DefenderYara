
rule Trojan_BAT_AgentTesla_NXH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NXH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {35 35 52 37 53 50 43 34 42 35 34 4a 51 47 4e 34 43 35 34 37 48 34 } //01 00 
		$a_01_1 = {47 65 74 42 79 74 65 73 } //01 00 
		$a_01_2 = {47 65 74 4f 62 6a 65 63 74 } //01 00 
		$a_01_3 = {52 66 63 32 38 39 38 44 65 72 69 76 65 42 79 74 65 73 } //01 00 
		$a_01_4 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00 
		$a_01_5 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}