
rule Trojan_BAT_AgentTesla_EY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {20 00 01 00 00 6f 90 01 03 0a 06 20 80 00 00 00 6f 90 01 03 0a 7e 90 01 03 04 7e 90 01 03 04 20 90 01 04 73 90 01 03 0a 0b 06 07 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 07 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 17 6f 90 01 03 0a 02 06 6f 90 01 03 0a 17 73 90 00 } //01 00 
		$a_81_1 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00  CreateDecryptor
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EY_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.EY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 10 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 65 39 35 61 65 64 63 2d 35 31 32 37 2d 34 65 35 39 2d 39 30 36 33 2d 66 31 37 32 39 30 62 34 30 61 39 62 } //14 00  $0e95aedc-5127-4e59-9063-f17290b40a9b
		$a_81_1 = {24 63 32 37 39 37 61 62 34 2d 39 64 63 35 2d 34 61 30 33 2d 62 32 62 64 2d 64 37 63 35 38 38 39 36 32 36 30 66 } //14 00  $c2797ab4-9dc5-4a03-b2bd-d7c58896260f
		$a_81_2 = {24 33 39 33 32 38 65 33 66 2d 38 30 65 61 2d 34 64 30 32 2d 61 61 66 62 2d 30 66 66 62 66 37 64 31 36 33 30 33 } //14 00  $39328e3f-80ea-4d02-aafb-0ffbf7d16303
		$a_81_3 = {24 35 64 31 37 34 64 34 39 2d 36 64 39 34 2d 34 62 38 38 2d 61 37 35 64 2d 38 65 63 62 61 61 64 33 36 37 62 64 } //01 00  $5d174d49-6d94-4b88-a75d-8ecbaad367bd
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {57 69 6e 64 6f 77 73 5f 46 6f 72 6d 73 5f 42 6f 6f 6b 73 2e 43 43 43 43 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Windows_Forms_Books.CCCC.resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {54 61 73 6b 4d 61 6e 61 67 65 72 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  TaskManager.Resources.resources
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {4d 6f 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Mo.My.Resources
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_11 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_14 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_15 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}