
rule Trojan_BAT_AgentTesla_CDR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CDR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {08 09 9a 13 04 00 06 11 04 1f 10 28 90 01 03 0a d1 6f 90 01 03 0a 26 00 09 17 58 0d 09 08 8e 69 90 00 } //01 00 
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_2 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_3 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_4 = {54 6f 43 68 61 72 41 72 72 61 79 } //00 00  ToCharArray
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_CDR_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.CDR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_81_0 = {58 5f 30 32 33 31 32 33 31 32 } //01 00  X_02312312
		$a_81_1 = {58 5f 31 32 33 31 32 33 34 35 34 33 36 33 } //01 00  X_123123454363
		$a_81_2 = {58 5f 31 32 33 39 34 31 34 37 38 39 34 } //01 00  X_12394147894
		$a_81_3 = {58 5f 31 32 34 38 39 33 31 34 31 34 } //01 00  X_1248931414
		$a_81_4 = {58 5f 32 31 33 39 38 31 33 38 37 32 31 } //01 00  X_21398138721
		$a_81_5 = {58 5f 38 35 34 33 32 33 34 33 32 34 32 } //01 00  X_85432343242
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //01 00  FromBase64CharArray
		$a_81_7 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_81_8 = {54 6f 49 6e 74 33 32 } //01 00  ToInt32
		$a_81_9 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_10 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_81_11 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_12 = {4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 } //01 00  OffsetMarshaler
		$a_81_13 = {52 65 74 75 72 6e 4d 65 73 73 61 67 65 } //00 00  ReturnMessage
	condition:
		any of ($a_*)
 
}