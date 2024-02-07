
rule Trojan_BAT_AgentTesla_CGP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CGP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 09 18 28 90 01 03 06 1f 10 28 90 01 03 06 84 28 90 01 03 06 28 90 01 03 06 26 09 18 25 90 00 } //01 00 
		$a_01_1 = {09 11 06 11 08 08 61 11 09 61 b4 9c } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_CGP_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.CGP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 01 00 "
		
	strings :
		$a_01_0 = {58 5f 30 32 33 31 32 33 31 32 } //01 00  X_02312312
		$a_01_1 = {58 5f 31 32 33 31 32 33 34 35 34 33 36 33 } //01 00  X_123123454363
		$a_01_2 = {58 5f 31 32 33 39 34 31 34 37 38 39 34 } //01 00  X_12394147894
		$a_01_3 = {58 5f 31 32 34 38 39 33 31 34 31 34 } //01 00  X_1248931414
		$a_01_4 = {58 5f 32 31 33 39 38 31 33 38 37 32 31 } //01 00  X_21398138721
		$a_01_5 = {58 5f 38 35 34 33 32 33 34 33 32 34 32 } //01 00  X_85432343242
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_7 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_01_8 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_01_9 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_01_10 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_11 = {4f 66 66 73 65 74 4d 61 72 73 68 61 6c 65 72 } //01 00  OffsetMarshaler
		$a_01_12 = {52 65 74 75 72 6e 4d 65 73 73 61 67 65 } //00 00  ReturnMessage
	condition:
		any of ($a_*)
 
}