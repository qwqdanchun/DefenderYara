
rule Trojan_BAT_Formbook_EV_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 0f 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 61 31 62 61 61 64 32 64 2d 39 62 62 38 2d 34 64 66 39 2d 62 34 38 33 2d 35 38 64 65 64 34 37 61 30 31 35 38 } //14 00  $a1baad2d-9bb8-4df9-b483-58ded47a0158
		$a_81_1 = {24 37 65 31 61 61 36 30 32 2d 31 36 64 63 2d 34 35 31 61 2d 38 65 35 34 2d 31 37 63 39 66 39 35 39 61 31 39 63 } //14 00  $7e1aa602-16dc-451a-8e54-17c9f959a19c
		$a_01_2 = {24 43 35 32 31 41 31 41 33 2d 35 35 38 42 2d 34 36 31 41 2d 39 42 42 42 2d 37 35 33 45 36 46 44 38 44 38 32 46 } //0a 00  $C521A1A3-558B-461A-9BBB-753E6FD8D82F
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //0a 00  CreateInstance
		$a_81_4 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_5 = {78 30 30 30 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  x000.My.Resources
		$a_81_6 = {67 55 4d 6d 59 68 52 43 78 75 79 6d 61 43 70 79 58 72 75 45 4b 7a 6e 73 72 70 4b 70 2e 72 65 73 6f 75 72 63 65 73 } //01 00  gUMmYhRCxuymaCpyXruEKznsrpKp.resources
		$a_81_7 = {57 69 6e 66 6f 72 6d 73 55 74 69 6c 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  WinformsUtils.My.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_10 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}