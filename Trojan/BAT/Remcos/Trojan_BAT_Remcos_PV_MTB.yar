
rule Trojan_BAT_Remcos_PV_MTB{
	meta:
		description = "Trojan:BAT/Remcos.PV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0f 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 33 65 63 62 36 63 34 36 2d 37 64 62 62 2d 34 39 39 39 2d 62 65 65 35 2d 34 30 33 35 33 33 61 33 30 61 66 37 } //14 00  $3ecb6c46-7dbb-4999-bee5-403533a30af7
		$a_01_1 = {24 44 33 35 39 42 32 31 41 2d 36 41 44 33 2d 34 32 42 42 2d 39 31 42 30 2d 34 45 39 33 38 43 39 44 45 42 42 43 } //14 00  $D359B21A-6AD3-42BB-91B0-4E938C9DEBBC
		$a_81_2 = {24 34 35 38 30 32 32 34 32 2d 38 31 62 34 2d 34 32 61 35 2d 61 30 61 30 2d 30 31 37 62 66 37 61 66 32 36 64 66 } //01 00  $45802242-81b4-42a5-a0a0-017bf7af26df
		$a_81_3 = {49 64 4f 70 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  IdOps.My.Resources
		$a_81_4 = {46 69 6c 65 5a 69 6c 6c 61 50 72 6f 6a 65 63 74 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  FileZillaProject.My.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_10 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_11 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_14 = {47 65 74 54 65 6d 70 50 61 74 68 } //00 00  GetTempPath
	condition:
		any of ($a_*)
 
}