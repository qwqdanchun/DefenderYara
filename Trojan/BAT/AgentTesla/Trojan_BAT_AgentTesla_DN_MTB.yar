
rule Trojan_BAT_AgentTesla_DN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 10 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 38 35 32 64 36 34 39 31 2d 34 35 38 30 2d 34 61 34 35 2d 38 63 38 30 2d 37 36 36 34 33 30 61 36 64 66 63 36 } //14 00  $852d6491-4580-4a45-8c80-766430a6dfc6
		$a_81_1 = {24 61 63 36 66 33 34 38 61 2d 32 36 33 39 2d 34 39 36 65 2d 38 32 31 38 2d 66 32 32 65 34 30 38 36 34 31 65 37 } //14 00  $ac6f348a-2639-496e-8218-f22e408641e7
		$a_81_2 = {24 65 63 62 33 35 34 36 66 2d 31 38 36 38 2d 34 65 33 31 2d 39 64 31 36 2d 38 61 37 61 65 36 62 33 63 37 63 65 } //01 00  $ecb3546f-1868-4e31-9d16-8a7ae6b3c7ce
		$a_81_3 = {53 4b 53 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  SKS.Resources.resources
		$a_81_4 = {5a 65 6e 44 69 72 65 63 74 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  ZenDirect.My.Resources
		$a_81_5 = {4d 65 6e 74 51 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  MentQ.Properties.Resources
		$a_81_6 = {6b 72 65 64 69 74 5f 68 70 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  kredit_hp.My.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_11 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_12 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_13 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_14 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_15 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}