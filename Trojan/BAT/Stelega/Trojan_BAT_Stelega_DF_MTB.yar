
rule Trojan_BAT_Stelega_DF_MTB{
	meta:
		description = "Trojan:BAT/Stelega.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 35 34 32 63 61 62 30 36 2d 62 63 34 38 2d 34 35 39 34 2d 39 66 62 38 2d 33 39 32 36 65 64 33 31 61 32 39 34 } //14 00  $542cab06-bc48-4594-9fb8-3926ed31a294
		$a_81_1 = {24 30 36 65 65 65 36 33 37 2d 64 31 34 65 2d 34 64 34 65 2d 62 33 64 35 2d 31 38 66 33 38 61 31 64 35 32 31 61 } //05 00  $06eee637-d14e-4d4e-b3d5-18f38a1d521a
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //05 00  CreateInstance
		$a_81_3 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_4 = {41 75 64 69 6f 5f 52 65 61 6c 74 65 6b 5f 44 72 69 76 65 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Audio_Realtek_Drive.Resources.resources
		$a_81_5 = {47 61 6d 65 72 5f 43 6c 6f 63 6b 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Gamer_Clock.My.Resources
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