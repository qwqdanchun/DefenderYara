
rule Trojan_BAT_AgentTesla_CUC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CUC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 00 69 00 4d 00 61 00 48 00 55 00 38 00 62 00 4a 00 4c 00 70 00 4f 00 71 00 72 00 44 00 53 00 45 00 6d 00 48 00 72 00 37 00 49 00 33 00 75 00 61 00 52 00 } //01 00  RiMaHU8bJLpOqrDSEmHr7I3uaR
		$a_01_1 = {57 00 6f 00 5a 00 47 00 4d 00 64 00 52 00 75 00 75 00 41 00 49 00 70 00 52 00 75 00 2b 00 55 00 53 00 4b 00 64 00 79 00 6e 00 37 00 6f 00 61 00 78 00 51 00 42 00 7a 00 7a 00 77 00 61 00 4d 00 66 00 44 00 6f 00 62 00 48 00 64 00 66 00 } //01 00  WoZGMdRuuAIpRu+USKdyn7oaxQBzzwaMfDobHdf
		$a_01_2 = {45 00 6d 00 39 00 4e 00 48 00 38 00 51 00 41 00 58 00 78 00 61 00 30 00 45 00 53 00 62 00 33 00 33 00 66 00 4b 00 66 00 69 00 45 00 54 00 72 00 4e 00 56 00 4b 00 6a 00 4e 00 53 00 4a 00 47 00 71 00 4b 00 65 00 47 00 50 00 } //01 00  Em9NH8QAXxa0ESb33fKfiETrNVKjNSJGqKeGP
		$a_01_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_4 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_6 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 } //00 00  DebuggingMode
	condition:
		any of ($a_*)
 
}