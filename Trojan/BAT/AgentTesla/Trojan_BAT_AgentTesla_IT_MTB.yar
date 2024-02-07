
rule Trojan_BAT_AgentTesla_IT_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.IT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 10 00 00 01 00 "
		
	strings :
		$a_81_0 = {54 65 73 74 69 6e 67 } //01 00  Testing
		$a_81_1 = {41 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 32 33 } //01 00  AZZZZZZZZZZZZZZZZ23
		$a_81_2 = {48 65 78 32 53 74 72 69 6e 67 } //01 00  Hex2String
		$a_81_3 = {00 53 5f 53 5f 53 00 73 00 64 00 58 44 41 53 58 41 58 41 58 00 } //01 00 
		$a_81_4 = {00 73 74 72 00 41 41 41 41 41 41 41 41 41 41 41 41 41 41 41 00 } //01 00 
		$a_81_5 = {52 65 66 6c 65 63 74 69 6f 6e } //01 00  Reflection
		$a_81_6 = {00 41 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 5a 32 33 00 54 79 70 65 00 78 7a 00 } //01 00 
		$a_81_7 = {74 6f 6f 6c 53 74 72 69 70 4d 65 6e 75 49 74 65 6d 31 5f 43 6c 69 63 6b } //01 00  toolStripMenuItem1_Click
		$a_81_8 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00  GetTypeFromHandle
		$a_81_9 = {53 70 6c 69 74 } //01 00  Split
		$a_81_10 = {42 65 67 69 6e 49 6e 69 74 } //01 00  BeginInit
		$a_81_11 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_15 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}