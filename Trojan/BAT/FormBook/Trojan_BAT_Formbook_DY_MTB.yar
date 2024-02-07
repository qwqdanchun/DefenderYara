
rule Trojan_BAT_Formbook_DY_MTB{
	meta:
		description = "Trojan:BAT/Formbook.DY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 0e 00 00 0a 00 "
		
	strings :
		$a_81_0 = {24 30 46 45 42 32 44 36 34 2d 45 46 35 46 2d 34 46 45 30 2d 42 31 38 41 2d 38 37 31 34 30 42 43 32 30 36 31 44 } //0a 00  $0FEB2D64-EF5F-4FE0-B18A-87140BC2061D
		$a_81_1 = {24 30 41 30 41 41 37 30 41 2d 38 36 43 31 2d 34 39 43 33 2d 41 37 31 33 2d 33 44 31 30 41 36 30 45 45 43 39 38 } //01 00  $0A0AA70A-86C1-49C3-A713-3D10A60EEC98
		$a_81_2 = {56 42 5f 62 6c 61 63 6b 6a 61 63 6b 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  VB_blackjack.My.Resources
		$a_81_3 = {48 65 61 6c 74 68 5f 50 6f 69 6e 74 5f 47 61 6d 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Health_Point_Game.My.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {47 65 74 52 65 73 6f 75 72 63 65 53 74 72 69 6e 67 } //01 00  GetResourceString
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_10 = {67 65 74 5f 47 65 74 49 6e 73 74 61 6e 63 65 } //01 00  get_GetInstance
		$a_81_11 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_12 = {67 65 74 5f 43 6f 6d 70 75 74 65 72 } //01 00  get_Computer
		$a_81_13 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerHiddenAttribute
	condition:
		any of ($a_*)
 
}