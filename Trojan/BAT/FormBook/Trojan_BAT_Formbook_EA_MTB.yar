
rule Trojan_BAT_Formbook_EA_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 34 35 37 31 35 35 33 2d 31 33 36 30 2d 34 38 30 32 2d 39 32 63 35 2d 63 30 65 64 63 34 38 32 39 31 66 66 } //14 00  $04571553-1360-4802-92c5-c0edc48291ff
		$a_81_1 = {24 62 36 36 36 36 32 30 30 2d 35 37 62 30 2d 34 30 62 38 2d 61 37 64 62 2d 61 64 38 38 39 35 33 39 63 39 37 64 } //14 00  $b6666200-57b0-40b8-a7db-ad889539c97d
		$a_81_2 = {24 34 38 62 34 65 35 35 64 2d 66 62 64 31 2d 34 34 62 33 2d 62 33 33 33 2d 31 36 37 38 66 64 34 38 34 63 61 34 } //01 00  $48b4e55d-fbd1-44b3-b333-1678fd484ca4
		$a_81_3 = {45 76 65 6e 74 5f 50 61 72 74 69 63 69 70 61 74 69 6f 6e 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Event_Participation.My.Resources
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_5 = {46 72 65 65 5f 53 61 6c 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Free_Sale.My.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {53 63 72 65 65 6e 43 61 43 61 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  ScreenCaCa.Properties.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerHiddenAttribute
	condition:
		any of ($a_*)
 
}