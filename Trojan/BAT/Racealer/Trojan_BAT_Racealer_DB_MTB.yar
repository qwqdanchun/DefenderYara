
rule Trojan_BAT_Racealer_DB_MTB{
	meta:
		description = "Trojan:BAT/Racealer.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 35 31 39 37 31 32 64 36 2d 33 63 38 33 2d 34 62 33 33 2d 39 32 62 35 2d 33 37 66 30 36 39 39 35 65 35 32 38 } //14 00  $519712d6-3c83-4b33-92b5-37f06995e528
		$a_01_1 = {24 41 41 43 39 44 31 46 36 2d 45 37 32 32 2d 34 36 37 43 2d 38 44 41 43 2d 36 33 34 39 36 37 44 42 32 37 46 45 } //05 00  $AAC9D1F6-E722-467C-8DAC-634967DB27FE
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //05 00  CreateInstance
		$a_81_3 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_4 = {53 42 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  SB.My.Resources
		$a_81_5 = {46 61 6c 6c 62 61 63 6b 4d 61 6e 61 67 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  FallbackManager.My.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}