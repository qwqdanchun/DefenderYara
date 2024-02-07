
rule Trojan_BAT_AgentTesla_JDA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JDA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {36 36 61 66 30 32 33 39 2d 37 38 32 30 2d 34 65 66 63 2d 61 31 32 30 2d 32 65 30 34 65 32 36 32 30 36 31 61 } //14 00  66af0239-7820-4efc-a120-2e04e262061a
		$a_81_1 = {24 37 36 61 66 31 66 63 37 2d 65 65 36 32 2d 34 66 38 36 2d 61 31 39 32 2d 65 34 62 64 62 61 36 31 62 33 66 38 } //0a 00  $76af1fc7-ee62-4f86-a192-e4bdba61b3f8
		$a_00_2 = {44 69 62 61 6b 61 72 20 4d 61 6e 64 61 6c } //0a 00  Dibakar Mandal
		$a_00_3 = {51 4d 61 6e 61 67 65 72 } //01 00  QManager
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_9 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00  CreateInstance
	condition:
		any of ($a_*)
 
}