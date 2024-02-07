
rule Trojan_BAT_Formbook_EG_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 10 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 63 66 66 30 64 37 30 2d 61 31 61 34 2d 34 32 35 61 2d 39 37 33 33 2d 64 37 32 34 65 61 36 32 33 66 32 65 } //14 00  $0cff0d70-a1a4-425a-9733-d724ea623f2e
		$a_81_1 = {24 61 34 33 63 32 65 62 35 2d 35 65 36 30 2d 34 36 31 32 2d 38 33 63 66 2d 31 64 62 36 37 35 65 31 66 35 30 30 } //14 00  $a43c2eb5-5e60-4612-83cf-1db675e1f500
		$a_81_2 = {24 33 61 66 65 31 63 66 39 2d 65 61 37 34 2d 34 63 35 34 2d 39 33 30 35 2d 30 32 36 62 37 64 30 30 30 38 37 35 } //14 00  $3afe1cf9-ea74-4c54-9305-026b7d000875
		$a_81_3 = {24 65 30 30 39 62 35 65 33 2d 32 38 61 32 2d 34 34 32 30 2d 62 64 66 61 2d 30 31 65 36 63 65 66 62 63 63 62 32 } //01 00  $e009b5e3-28a2-4420-bdfa-01e6cefbccb2
		$a_81_4 = {56 69 73 75 61 6c 45 6e 67 69 6e 65 2e 52 65 73 6f 75 72 63 65 73 } //01 00  VisualEngine.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_6 = {6d 65 6d 6f 72 79 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  memory.My.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_8 = {53 61 66 65 43 65 72 74 43 6f 6e 74 65 78 74 48 61 6e 64 6c 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  SafeCertContextHandle.My.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_10 = {70 72 6f 6a 65 63 74 4d 61 6e 61 67 65 6d 65 6e 74 53 79 73 74 65 6d 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  projectManagementSystem.My.Resources
		$a_81_11 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_14 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_15 = {63 6f 6e 6e 65 63 74 69 6f 6e 53 74 72 69 6e 67 } //00 00  connectionString
	condition:
		any of ($a_*)
 
}