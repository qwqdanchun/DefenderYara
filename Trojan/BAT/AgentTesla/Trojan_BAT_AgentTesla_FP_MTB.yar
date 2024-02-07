
rule Trojan_BAT_AgentTesla_FP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0f 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 62 36 65 64 37 66 31 30 2d 61 63 38 38 2d 34 32 38 63 2d 61 65 32 38 2d 31 33 39 66 31 35 39 34 65 36 38 37 } //14 00  $b6ed7f10-ac88-428c-ae28-139f1594e687
		$a_01_1 = {24 34 34 43 31 39 44 35 38 2d 37 45 30 41 2d 34 35 39 39 2d 41 42 45 32 2d 34 30 39 31 36 41 35 33 39 42 42 33 } //14 00  $44C19D58-7E0A-4599-ABE2-40916A539BB3
		$a_81_2 = {24 30 39 38 31 63 66 38 36 2d 30 31 39 31 2d 34 65 35 35 2d 38 64 63 63 2d 35 37 38 32 37 63 64 37 35 32 65 38 } //01 00  $0981cf86-0191-4e55-8dcc-57827cd752e8
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {4d 6f 6e 6f 70 6f 6c 79 53 69 6d 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  MonopolySim.My.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {43 68 65 63 6b 69 6e 67 41 63 63 6f 75 6e 74 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  CheckingAccount.My.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_8 = {51 4c 47 52 5f 47 55 49 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  QLGR_GUI.My.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_11 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}