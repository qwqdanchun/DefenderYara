
rule Trojan_BAT_Remcos_EW_MTB{
	meta:
		description = "Trojan:BAT/Remcos.EW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 38 36 61 31 62 36 65 62 2d 38 31 33 39 2d 34 37 61 38 2d 62 36 37 34 2d 61 35 66 63 38 33 35 65 62 66 32 64 } //14 00  $86a1b6eb-8139-47a8-b674-a5fc835ebf2d
		$a_81_1 = {24 35 33 64 30 34 65 61 30 2d 30 62 61 61 2d 34 62 36 33 2d 62 31 61 30 2d 61 62 33 32 64 33 38 39 36 37 61 32 } //14 00  $53d04ea0-0baa-4b63-b1a0-ab32d38967a2
		$a_81_2 = {24 38 61 35 66 31 65 31 31 2d 61 33 64 34 2d 34 35 39 38 2d 38 63 65 65 2d 32 39 30 64 39 38 34 39 30 34 63 34 } //01 00  $8a5f1e11-a3d4-4598-8cee-290d984904c4
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_7 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_9 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_10 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}