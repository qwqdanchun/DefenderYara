
rule Trojan_BAT_Lokibot_EG_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.EG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0b 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 61 66 36 65 61 37 32 64 2d 62 34 30 37 2d 34 31 65 64 2d 38 32 64 34 2d 61 33 64 32 62 64 35 65 36 62 34 38 } //01 00  $af6ea72d-b407-41ed-82d4-a3d2bd5e6b48
		$a_81_1 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_2 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_3 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_5 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_7 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}