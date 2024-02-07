
rule Trojan_BAT_AgentTesla_EX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 03 00 00 0a 00 "
		
	strings :
		$a_00_0 = {11 05 11 01 11 08 11 01 11 08 8e 69 5d 91 9e 38 } //0a 00 
		$a_00_1 = {11 07 11 01 03 11 01 91 11 09 61 d2 9c 38 } //01 00 
		$a_81_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EX_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.EX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 63 65 64 63 39 30 66 2d 36 66 39 31 2d 34 36 62 31 2d 62 39 31 32 2d 64 61 35 36 32 66 33 63 30 36 39 35 } //14 00  $0cedc90f-6f91-46b1-b912-da562f3c0695
		$a_81_1 = {24 64 32 35 62 35 64 63 35 2d 36 35 31 35 2d 34 31 31 31 2d 39 61 65 30 2d 36 35 34 38 64 65 34 38 38 39 65 31 } //14 00  $d25b5dc5-6515-4111-9ae0-6548de4889e1
		$a_81_2 = {24 33 31 61 64 32 63 63 35 2d 36 31 62 35 2d 34 64 39 35 2d 61 31 37 31 2d 35 66 65 35 37 36 30 30 33 36 61 66 } //01 00  $31ad2cc5-61b5-4d95-a171-5fe5760036af
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_9 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_10 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_11 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EX_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.EX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 10 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 31 66 38 36 30 35 38 65 2d 64 64 30 32 2d 34 38 63 38 2d 62 65 63 32 2d 65 62 66 63 38 36 37 66 36 30 30 31 } //14 00  $1f86058e-dd02-48c8-bec2-ebfc867f6001
		$a_81_1 = {24 66 66 65 37 38 39 61 34 2d 63 33 63 31 2d 34 62 30 63 2d 38 36 37 38 2d 35 64 38 36 64 37 30 61 61 34 66 62 } //14 00  $ffe789a4-c3c1-4b0c-8678-5d86d70aa4fb
		$a_81_2 = {24 39 37 37 65 31 36 38 61 2d 33 61 37 62 2d 34 65 30 64 2d 61 32 65 66 2d 34 37 65 31 65 62 32 30 31 36 64 35 } //14 00  $977e168a-3a7b-4e0d-a2ef-47e1eb2016d5
		$a_81_3 = {24 34 65 62 62 30 34 63 35 2d 63 30 39 64 2d 34 39 62 65 2d 39 30 64 30 2d 35 38 38 32 33 66 62 62 61 32 30 30 } //01 00  $4ebb04c5-c09d-49be-90d0-58823fbba200
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {53 41 43 46 45 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  SACFE.My.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_7 = {57 69 6e 74 65 72 5f 53 70 6f 72 74 73 5f 52 65 6e 74 61 6c 2e 52 65 73 6f 75 72 63 65 73 } //01 00  Winter_Sports_Rental.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {52 6f 67 75 65 42 75 74 74 6f 6e 73 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  RogueButtons.My.Resources
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_11 = {54 65 63 68 53 75 70 70 6f 72 74 52 65 67 69 73 74 72 61 74 69 6f 6e 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  TechSupportRegistration.My.Resources
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_13 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_14 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_15 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}