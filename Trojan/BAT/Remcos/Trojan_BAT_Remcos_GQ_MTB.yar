
rule Trojan_BAT_Remcos_GQ_MTB{
	meta:
		description = "Trojan:BAT/Remcos.GQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0c 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 63 38 61 36 66 34 30 63 2d 66 63 39 38 2d 34 31 62 33 2d 62 39 62 34 2d 37 61 36 33 66 34 31 38 66 66 31 32 } //14 00  $c8a6f40c-fc98-41b3-b9b4-7a63f418ff12
		$a_00_1 = {24 61 65 30 63 33 33 61 66 2d 33 64 63 62 2d 34 66 66 36 2d 62 62 62 66 2d 31 31 35 64 38 63 35 31 33 39 38 64 } //01 00  $ae0c33af-3dcb-4ff6-bbbf-115d8c51398d
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_8 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_11 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}