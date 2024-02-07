
rule Trojan_BAT_AgentTesla_FQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 06 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 65 34 31 33 37 61 38 62 2d 63 64 35 32 2d 34 33 66 37 2d 39 66 66 62 2d 33 38 33 37 61 38 36 61 39 32 34 33 } //01 00  $e4137a8b-cd52-43f7-9ffb-3837a86a9243
		$a_81_1 = {57 69 6e 64 6f 77 73 73 65 74 74 69 6e 67 73 2e 53 65 74 74 69 6e 67 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Windowssettings.Settings.resources
		$a_81_2 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_5 = {52 65 70 6c 61 63 65 } //00 00  Replace
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_FQ_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 62 61 31 64 39 36 61 38 2d 63 35 62 63 2d 34 36 62 61 2d 61 64 36 65 2d 63 38 39 38 36 63 34 62 33 32 36 37 } //14 00  $ba1d96a8-c5bc-46ba-ad6e-c8986c4b3267
		$a_81_1 = {24 62 33 64 36 31 65 36 36 2d 32 33 62 33 2d 34 34 65 33 2d 38 62 31 33 2d 30 36 37 34 36 33 34 63 36 39 34 34 } //14 00  $b3d61e66-23b3-44e3-8b13-0674634c6944
		$a_81_2 = {24 66 63 35 65 65 39 65 37 2d 33 31 61 31 2d 34 30 39 32 2d 61 66 34 38 2d 36 39 64 66 39 66 65 36 36 38 38 65 } //01 00  $fc5ee9e7-31a1-4092-af48-69df9fe6688e
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_9 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_10 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_11 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}