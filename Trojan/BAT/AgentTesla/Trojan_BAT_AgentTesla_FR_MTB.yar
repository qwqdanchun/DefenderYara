
rule Trojan_BAT_AgentTesla_FR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {16 0a 72 01 00 00 70 12 00 28 90 01 03 0a 2c 10 06 16 31 0c 06 20 e8 03 00 00 5a 28 90 01 03 0a de 03 90 00 } //05 00 
		$a_03_1 = {26 de 00 72 90 01 03 70 28 90 01 03 0a 73 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 74 01 00 00 1b 28 90 01 03 06 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 6f 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 14 16 8d 01 00 00 01 6f 90 01 03 0a 26 de 03 26 de 00 2a 90 00 } //01 00 
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_3 = {4c 6f 61 64 65 72 } //00 00  Loader
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_FR_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 38 38 61 37 61 34 30 36 2d 65 38 37 33 2d 34 38 36 63 2d 62 32 30 66 2d 34 33 38 32 63 32 62 61 61 32 61 32 } //14 00  $88a7a406-e873-486c-b20f-4382c2baa2a2
		$a_81_1 = {24 36 64 39 31 63 66 38 63 2d 64 35 37 31 2d 34 66 38 38 2d 61 35 61 63 2d 63 35 62 64 35 35 30 31 64 66 30 33 } //14 00  $6d91cf8c-d571-4f88-a5ac-c5bd5501df03
		$a_81_2 = {24 36 39 32 61 38 63 37 62 2d 38 31 36 36 2d 34 38 37 61 2d 38 34 37 66 2d 30 35 61 61 35 39 35 34 35 34 37 30 } //01 00  $692a8c7b-8166-487a-847f-05aa59545470
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