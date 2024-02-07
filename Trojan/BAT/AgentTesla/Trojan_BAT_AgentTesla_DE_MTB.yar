
rule Trojan_BAT_AgentTesla_DE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 62 63 33 66 31 37 66 62 2d 33 65 61 61 2d 34 64 34 61 2d 38 66 62 65 2d 35 32 36 31 33 38 30 65 30 34 62 65 } //14 00  $bc3f17fb-3eaa-4d4a-8fbe-5261380e04be
		$a_81_1 = {24 61 35 38 31 36 30 34 38 2d 31 32 65 66 2d 34 64 38 66 2d 62 65 35 33 2d 62 61 36 30 35 63 66 37 32 64 65 35 } //14 00  $a5816048-12ef-4d8f-be53-ba605cf72de5
		$a_81_2 = {24 30 35 33 38 35 32 62 36 2d 32 34 36 62 2d 34 38 35 33 2d 61 35 37 34 2d 62 33 33 61 34 38 39 33 61 31 62 36 } //14 00  $053852b6-246b-4853-a574-b33a4893a1b6
		$a_81_3 = {24 34 65 36 62 65 32 62 65 2d 36 35 65 61 2d 34 39 32 63 2d 62 39 34 34 2d 32 36 65 65 62 63 37 66 37 37 65 38 } //01 00  $4e6be2be-65ea-492c-b944-26eebc7f77e8
		$a_81_4 = {73 68 75 74 64 6f 77 6e 74 69 6d 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00  shutdowntimer.Properties.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_6 = {43 72 61 63 6b 65 72 42 61 72 72 65 6c 47 61 6d 65 2e 52 65 73 6f 75 72 63 65 73 } //01 00  CrackerBarrelGame.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_8 = {53 65 63 75 72 69 74 79 43 6f 6e 74 65 78 74 52 75 6e 44 61 74 61 2e 52 65 73 6f 75 72 63 65 73 } //01 00  SecurityContextRunData.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_10 = {53 6f 66 74 77 6f 72 6b 73 5f 52 68 69 6e 6f 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Softworks_Rhino.Resources
		$a_81_11 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}