
rule Trojan_BAT_AgentTesla_JMH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_81_0 = {53 70 6c 69 74 } //01 00  Split
		$a_81_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //01 00  FromBase64CharArray
		$a_81_3 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_81_4 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_5 = {00 46 5f 32 5f 32 5f 32 5f 32 5f 32 00 } //01 00 
		$a_81_6 = {00 46 5f 37 5f 37 5f 37 5f 37 5f 37 00 } //01 00 
		$a_81_7 = {00 51 5f 38 5f 51 5f 38 5f 51 5f 38 00 } //01 00 
		$a_81_8 = {5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 33 33 33 33 33 33 33 33 } //01 00  ZZZZZZZZZZZ33333333
		$a_81_9 = {00 58 5f 30 5f 30 5f 30 5f 30 5f 30 00 } //01 00 
		$a_81_10 = {00 5a 36 36 36 36 36 36 36 36 36 36 36 36 36 00 } //01 00  娀㘶㘶㘶㘶㘶㘶6
		$a_81_11 = {00 5a 36 37 34 34 34 34 34 34 34 34 34 34 34 34 00 } //01 00 
		$a_81_12 = {52 65 76 65 72 73 65 } //00 00  Reverse
	condition:
		any of ($a_*)
 
}