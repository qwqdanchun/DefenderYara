
rule Trojan_BAT_SnakeKeylogger_DE_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeylogger.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 64 30 64 32 63 66 62 62 2d 63 30 36 63 2d 34 64 62 65 2d 61 66 38 61 2d 61 65 30 66 62 62 36 61 32 64 62 30 } //01 00  $d0d2cfbb-c06c-4dbe-af8a-ae0fbb6a2db0
		$a_81_1 = {41 6c 61 72 6d 43 6c 6f 63 6b 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  AlarmClock.Resources.resources
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_8 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}