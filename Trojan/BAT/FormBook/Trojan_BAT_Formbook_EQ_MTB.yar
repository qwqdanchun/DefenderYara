
rule Trojan_BAT_Formbook_EQ_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 65 33 39 32 37 34 30 64 2d 32 64 66 61 2d 34 61 39 35 2d 61 64 32 31 2d 35 36 62 62 66 66 37 39 65 30 64 30 } //14 00  $e392740d-2dfa-4a95-ad21-56bbff79e0d0
		$a_81_1 = {24 30 30 38 61 38 35 30 65 2d 64 34 32 30 2d 34 36 35 35 2d 61 31 33 35 2d 37 34 64 39 36 34 33 65 32 33 34 39 } //01 00  $008a850e-d420-4655-a135-74d9643e2349
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {53 74 6f 4b 4f 64 6e 6f 6d 75 43 6f 6e 74 72 6f 6c 2e 52 65 73 6f 75 72 63 65 73 } //01 00  StoKOdnomuControl.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {44 61 74 61 62 61 73 65 54 65 73 74 41 70 70 6c 69 63 61 74 69 6f 6e 32 2e 52 65 73 6f 75 72 63 65 73 } //01 00  DatabaseTestApplication2.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_8 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}