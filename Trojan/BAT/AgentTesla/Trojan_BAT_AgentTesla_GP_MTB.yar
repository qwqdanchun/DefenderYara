
rule Trojan_BAT_AgentTesla_GP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 39 63 66 62 39 35 34 65 2d 31 33 37 38 2d 34 32 65 65 2d 39 62 34 34 2d 31 64 62 66 66 37 63 61 62 64 35 33 } //14 00  $9cfb954e-1378-42ee-9b44-1dbff7cabd53
		$a_81_1 = {24 65 39 63 61 61 61 66 30 2d 33 30 33 35 2d 34 65 30 34 2d 62 61 33 34 2d 63 39 39 31 63 30 61 38 37 38 35 61 } //14 00  $e9caaaf0-3035-4e04-ba34-c991c0a8785a
		$a_81_2 = {24 62 34 66 32 65 64 66 36 2d 66 30 31 35 2d 34 39 30 30 2d 38 37 65 35 2d 65 65 32 33 61 30 32 31 35 64 37 31 } //01 00  $b4f2edf6-f015-4900-87e5-ee23a0215d71
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