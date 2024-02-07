
rule Trojan_BAT_Formbook_FH_MTB{
	meta:
		description = "Trojan:BAT/Formbook.FH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0f 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 61 38 30 38 64 34 32 66 2d 63 32 34 38 2d 34 39 63 30 2d 39 33 32 61 2d 62 38 39 61 38 35 39 30 30 65 38 65 } //14 00  $a808d42f-c248-49c0-932a-b89a85900e8e
		$a_81_1 = {24 30 33 62 37 64 30 34 38 2d 38 30 31 34 2d 34 62 66 38 2d 62 63 37 62 2d 30 35 64 34 39 37 64 35 62 36 34 35 } //14 00  $03b7d048-8014-4bf8-bc7b-05d497d5b645
		$a_81_2 = {24 64 63 65 30 31 63 35 61 2d 30 65 33 65 2d 34 65 61 62 2d 61 33 31 66 2d 34 32 66 61 31 64 30 39 66 36 34 37 } //14 00  $dce01c5a-0e3e-4eab-a31f-42fa1d09f647
		$a_81_3 = {24 65 66 64 39 61 65 62 65 2d 66 30 30 61 2d 34 34 39 31 2d 39 62 30 65 2d 39 34 39 31 39 62 37 32 32 37 35 34 } //14 00  $efd9aebe-f00a-4491-9b0e-94919b722754
		$a_81_4 = {24 64 61 37 32 35 30 30 35 2d 35 63 32 36 2d 34 33 37 36 2d 62 61 32 36 2d 32 64 32 31 30 38 32 39 62 32 34 39 } //14 00  $da725005-5c26-4376-ba26-2d210829b249
		$a_81_5 = {24 65 38 31 36 30 62 62 66 2d 35 34 39 66 2d 34 39 39 30 2d 62 62 34 64 2d 62 35 63 35 36 34 36 30 37 62 38 39 } //01 00  $e8160bbf-549f-4990-bb4d-b5c564607b89
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_11 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}