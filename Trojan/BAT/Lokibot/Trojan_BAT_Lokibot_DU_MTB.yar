
rule Trojan_BAT_Lokibot_DU_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.DU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0c 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 61 37 61 38 35 32 37 63 2d 33 37 61 65 2d 34 34 33 62 2d 38 64 61 61 2d 36 31 30 30 31 63 62 64 32 36 35 38 } //14 00  $a7a8527c-37ae-443b-8daa-61001cbd2658
		$a_00_1 = {24 61 65 66 37 31 61 33 61 2d 63 38 66 38 2d 34 64 32 37 2d 38 66 66 64 2d 32 30 64 30 61 34 39 65 61 63 65 36 } //01 00  $aef71a3a-c8f8-4d27-8ffd-20d0a49eace6
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