
rule Trojan_BAT_ClipBanker_DI_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.DI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0c 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 61 38 38 39 63 63 34 30 2d 31 62 32 34 2d 34 38 37 37 2d 38 32 65 31 2d 62 39 30 31 62 62 65 35 35 62 31 64 } //14 00  $a889cc40-1b24-4877-82e1-b901bbe55b1d
		$a_00_1 = {24 61 66 65 63 33 34 63 63 2d 36 38 30 64 2d 34 65 32 33 2d 38 61 37 39 2d 37 64 64 65 35 31 39 37 33 63 33 32 } //01 00  $afec34cc-680d-4e23-8a79-7dde51973c32
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