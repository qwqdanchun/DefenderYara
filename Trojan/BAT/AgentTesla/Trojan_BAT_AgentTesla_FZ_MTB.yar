
rule Trojan_BAT_AgentTesla_FZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 08 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 37 32 63 30 36 64 62 2d 61 61 62 39 2d 34 66 30 31 2d 39 37 63 64 2d 34 63 63 32 32 31 62 61 33 38 37 30 } //14 00  $072c06db-aab9-4f01-97cd-4cc221ba3870
		$a_81_1 = {24 64 64 30 32 66 34 65 66 2d 32 62 64 64 2d 34 32 64 39 2d 61 61 33 66 2d 62 38 34 33 63 32 32 39 36 65 30 33 } //01 00  $dd02f4ef-2bdd-42d9-aa3f-b843c2296e03
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_7 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_FZ_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 38 37 37 39 63 61 36 34 2d 65 66 64 62 2d 34 61 65 62 2d 61 66 62 30 2d 39 61 64 63 65 37 32 33 39 38 61 31 } //14 00  $8779ca64-efdb-4aeb-afb0-9adce72398a1
		$a_81_1 = {24 37 30 65 66 39 30 35 31 2d 65 39 66 33 2d 34 39 36 64 2d 61 64 39 64 2d 33 30 37 66 61 39 62 36 63 61 61 34 } //14 00  $70ef9051-e9f3-496d-ad9d-307fa9b6caa4
		$a_81_2 = {24 38 63 32 31 64 35 65 32 2d 62 62 65 65 2d 34 30 39 38 2d 38 32 34 34 2d 31 37 38 38 63 31 32 34 65 32 66 36 } //14 00  $8c21d5e2-bbee-4098-8244-1788c124e2f6
		$a_81_3 = {24 37 31 39 65 66 31 64 62 2d 39 36 38 65 2d 34 62 35 61 2d 38 34 37 62 2d 62 37 61 36 39 32 39 66 61 37 33 64 } //01 00  $719ef1db-968e-4b5a-847b-b7a6929fa73d
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}