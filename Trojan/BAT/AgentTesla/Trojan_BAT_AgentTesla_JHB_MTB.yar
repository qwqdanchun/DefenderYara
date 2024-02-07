
rule Trojan_BAT_AgentTesla_JHB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JHB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 5f 44 00 70 32 00 58 58 58 58 58 58 00 53 00 73 73 00 57 53 53 } //01 00  彃D㉰堀塘塘XS獳圀卓
		$a_81_1 = {62 31 61 31 64 63 64 64 2d 61 64 36 31 2d 34 65 36 66 2d 38 65 34 66 2d 63 38 31 35 31 32 65 36 39 66 65 65 } //01 00  b1a1dcdd-ad61-4e6f-8e4f-c81512e69fee
		$a_01_2 = {66 6c 65 78 74 72 6f 6e 69 63 73 } //01 00  flextronics
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_5 = {00 58 58 58 58 58 58 00 } //01 00  堀塘塘X
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_10 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerBrowsableAttribute
	condition:
		any of ($a_*)
 
}