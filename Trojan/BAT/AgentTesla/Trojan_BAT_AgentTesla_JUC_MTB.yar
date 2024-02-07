
rule Trojan_BAT_AgentTesla_JUC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JUC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 00 6e 00 76 00 6f 00 6b 00 00 09 65 00 4d 00 65 00 6d 00 00 07 62 00 65 00 72 } //01 00 
		$a_81_1 = {00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 } //01 00 
		$a_81_2 = {44 31 32 33 31 33 31 35 37 36 35 } //01 00  D1231315765
		$a_81_3 = {65 73 61 42 6d 6f 72 46 } //01 00  esaBmorF
		$a_81_4 = {67 6e 69 72 74 53 34 36 } //01 00  gnirtS46
		$a_81_5 = {46 54 54 48 5f 30 } //01 00  FTTH_0
		$a_81_6 = {53 74 72 5f 30 } //01 00  Str_0
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00  CreateInstance
	condition:
		any of ($a_*)
 
}