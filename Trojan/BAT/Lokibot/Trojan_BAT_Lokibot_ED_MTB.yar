
rule Trojan_BAT_Lokibot_ED_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.ED!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0c 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 33 32 36 33 35 38 33 61 2d 33 65 39 36 2d 34 63 63 65 2d 38 63 39 62 2d 65 37 61 39 61 33 38 61 64 66 61 30 } //14 00  $3263583a-3e96-4cce-8c9b-e7a9a38adfa0
		$a_00_1 = {24 36 61 65 63 31 38 37 35 2d 37 38 30 33 2d 34 61 33 31 2d 62 65 32 32 2d 39 39 36 65 38 64 62 34 36 33 64 36 } //01 00  $6aec1875-7803-4a31-be22-996e8db463d6
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