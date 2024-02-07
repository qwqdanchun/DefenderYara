
rule Trojan_BAT_Racealer_DD_MTB{
	meta:
		description = "Trojan:BAT/Racealer.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 36 34 31 33 34 62 62 39 2d 31 36 61 66 2d 34 39 38 32 2d 38 31 66 31 2d 34 31 36 64 62 30 38 35 63 64 38 63 } //14 00  $64134bb9-16af-4982-81f1-416db085cd8c
		$a_81_1 = {24 35 38 63 33 63 61 61 63 2d 64 64 33 31 2d 34 34 30 64 2d 62 63 61 34 2d 37 35 61 66 32 36 65 66 39 33 34 32 } //01 00  $58c3caac-dd31-440d-bca4-75af26ef9342
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {6f 70 65 6e 42 6c 61 63 6b 62 72 65 65 7a 65 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  openBlackbreeze.Resources.resources
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {6b 75 6c 65 72 49 73 6c 61 6e 64 73 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  kulerIslands.Properties.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_9 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}