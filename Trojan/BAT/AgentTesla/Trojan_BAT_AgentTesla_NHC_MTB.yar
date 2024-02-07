
rule Trojan_BAT_AgentTesla_NHC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NHC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 30 38 39 38 45 33 33 44 2d 43 45 35 44 2d 34 30 41 38 2d 39 36 35 37 2d 34 36 36 32 34 31 36 37 33 35 41 45 } //0a 00  $0898E33D-CE5D-40A8-9657-4662416735AE
		$a_01_1 = {24 62 34 62 65 39 37 66 32 2d 65 34 34 33 2d 34 39 63 63 2d 39 33 38 30 2d 38 35 66 36 34 36 30 33 34 31 64 63 } //01 00  $b4be97f2-e443-49cc-9380-85f6460341dc
		$a_01_2 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_01_3 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_4 = {00 41 73 63 57 00 } //01 00  䄀捳W
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_01_7 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_01_8 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_01_9 = {47 65 74 42 79 74 65 73 } //00 00  GetBytes
	condition:
		any of ($a_*)
 
}