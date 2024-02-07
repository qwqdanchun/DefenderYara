
rule Trojan_BAT_AgentTesla_IS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.IS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 12 00 00 01 00 "
		
	strings :
		$a_81_0 = {00 47 65 74 54 65 78 74 46 72 6f 6d 4c 69 6e 65 00 4c 69 6e 65 00 } //01 00  䜀瑥敔瑸牆浯楌敮䰀湩e
		$a_81_1 = {00 70 32 00 4f 50 00 61 7a 00 61 7a 78 00 43 6f 6e 74 61 69 6e 65 72 00 } //01 00  瀀2偏愀z穡x潃瑮楡敮r
		$a_81_2 = {00 70 31 00 69 6d 69 6d 69 6d 69 6d 69 6d 00 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 78 00 6b 00 44 53 44 53 00 53 00 } //01 00 
		$a_81_3 = {4f 62 73 41 74 74 72 69 62 75 74 65 } //01 00  ObsAttribute
		$a_81_4 = {46 69 6c 65 4e 61 6d 65 } //01 00  FileName
		$a_81_5 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_81_6 = {50 61 72 61 6d 41 72 72 61 79 30 } //01 00  ParamArray0
		$a_81_7 = {41 72 72 61 79 41 74 74 72 69 62 75 74 65 } //01 00  ArrayAttribute
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_11 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_13 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_14 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_15 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_16 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_17 = {47 65 74 54 79 70 65 } //00 00  GetType
	condition:
		any of ($a_*)
 
}