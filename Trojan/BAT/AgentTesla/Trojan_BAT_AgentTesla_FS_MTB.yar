
rule Trojan_BAT_AgentTesla_FS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {19 0a 02 13 05 16 13 04 11 05 6f 90 01 03 0a 13 06 2b 2a 11 05 11 04 6f 90 01 03 0a 0d 08 09 28 90 01 03 0a 06 da 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 0c 11 04 17 d6 13 04 00 11 04 11 06 fe 04 13 07 11 07 2d ca 90 00 } //01 00 
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_3 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_FS_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 13 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 66 30 31 61 36 64 35 34 2d 65 33 37 36 2d 34 65 63 32 2d 61 30 37 35 2d 34 32 34 64 38 34 34 33 33 36 66 64 } //14 00  $f01a6d54-e376-4ec2-a075-424d844336fd
		$a_81_1 = {24 35 35 39 65 64 32 65 65 2d 65 66 62 36 2d 34 37 61 35 2d 38 65 63 39 2d 37 31 37 39 63 64 64 35 31 65 64 38 } //14 00  $559ed2ee-efb6-47a5-8ec9-7179cdd51ed8
		$a_81_2 = {24 35 63 38 38 30 65 34 35 2d 37 30 30 37 2d 34 39 34 62 2d 39 33 38 39 2d 64 31 61 64 39 38 39 63 66 63 31 32 } //14 00  $5c880e45-7007-494b-9389-d1ad989cfc12
		$a_01_3 = {24 45 42 42 44 33 35 46 45 2d 44 30 35 41 2d 34 34 34 43 2d 41 37 36 34 2d 37 39 36 33 33 34 35 36 38 46 42 46 } //14 00  $EBBD35FE-D05A-444C-A764-796334568FBF
		$a_81_4 = {24 66 61 62 63 62 61 36 66 2d 37 39 65 35 2d 34 65 64 66 2d 39 35 30 33 2d 35 33 37 34 36 37 39 33 66 35 65 37 } //01 00  $fabcba6f-79e5-4edf-9503-53746793f5e7
		$a_81_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_6 = {42 61 73 69 63 43 6c 61 73 73 56 61 6c 69 64 61 74 69 6f 6e 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  BasicClassValidation.My.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_8 = {4d 69 6e 65 73 77 65 65 70 65 72 41 64 76 61 6e 63 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  MinesweeperAdvance.My.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_10 = {46 6f 6f 74 62 61 6c 6c 54 65 61 6d 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  FootballTeams.My.Resources
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_12 = {4d 44 49 57 69 6e 64 6f 77 4d 61 6e 61 67 65 72 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  MDIWindowManager.My.Resources
		$a_81_13 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_14 = {50 61 74 63 68 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Patch.My.Resources
		$a_81_15 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_16 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_17 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_18 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}