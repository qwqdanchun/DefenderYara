
rule Trojan_BAT_Formbook_EC_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 32 38 66 66 30 63 38 62 2d 39 34 39 65 2d 34 62 61 36 2d 38 62 34 39 2d 66 65 38 38 38 35 63 32 32 65 35 66 } //14 00  $28ff0c8b-949e-4ba6-8b49-fe8885c22e5f
		$a_81_1 = {24 35 38 37 37 63 31 36 38 2d 31 66 35 38 2d 34 39 35 62 2d 62 39 36 30 2d 31 33 62 65 32 36 39 61 35 39 39 66 } //14 00  $5877c168-1f58-495b-b960-13be269a599f
		$a_81_2 = {24 63 34 36 36 37 64 66 37 2d 32 31 62 38 2d 34 37 38 63 2d 61 62 30 33 2d 33 31 31 63 33 63 62 63 34 38 64 33 } //01 00  $c4667df7-21b8-478c-ab03-311c3cbc48d3
		$a_81_3 = {53 6e 61 6b 65 47 61 6d 65 50 4f 4f 2e 52 65 73 6f 75 72 63 65 73 } //01 00  SnakeGamePOO.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_5 = {53 74 75 64 69 6f 62 6f 72 6e 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Studioborne.My.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_7 = {52 65 73 74 61 75 72 61 6e 74 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Restaurant.My.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_11 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}