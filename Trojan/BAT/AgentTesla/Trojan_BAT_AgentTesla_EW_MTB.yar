
rule Trojan_BAT_AgentTesla_EW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 03 00 "
		
	strings :
		$a_00_0 = {57 97 a2 2b 09 07 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 6b 00 00 00 2d 00 00 00 53 00 00 00 b3 00 00 00 80 } //03 00 
		$a_81_1 = {44 54 45 44 52 65 61 64 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //03 00  DTEDReader.Properties.Resources.resources
		$a_81_2 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //03 00  GetExecutingAssembly
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //03 00  DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //03 00  DebuggerHiddenAttribute
		$a_81_5 = {42 6c 6f 63 6b 43 6f 70 79 } //00 00  BlockCopy
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EW_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.EW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0c 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 63 32 37 39 37 61 62 34 2d 39 64 63 35 2d 34 61 30 33 2d 62 32 62 64 2d 64 37 63 35 38 38 39 36 32 36 30 66 } //14 00  $c2797ab4-9dc5-4a03-b2bd-d7c58896260f
		$a_81_1 = {24 30 37 34 39 61 32 62 38 2d 31 63 66 35 2d 34 31 63 33 2d 39 39 63 66 2d 39 36 39 63 64 65 61 32 30 65 65 32 } //01 00  $0749a2b8-1cf5-41c3-99cf-969cdea20ee2
		$a_81_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_3 = {57 69 6e 64 6f 77 73 5f 46 6f 72 6d 73 5f 42 6f 6f 6b 73 2e 46 6f 72 6d 2e 72 65 73 6f 75 72 63 65 73 } //01 00  Windows_Forms_Books.Form.resources
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_5 = {64 69 73 63 6f 72 64 68 65 6c 70 65 72 5f 6d 6f 64 75 6c 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00  discordhelper_module.My.Resources
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_9 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_EW_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.EW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 37 66 39 64 37 63 33 38 2d 34 65 30 39 2d 34 33 61 33 2d 38 34 35 35 2d 61 37 39 66 31 39 66 38 64 38 31 30 } //14 00  $7f9d7c38-4e09-43a3-8455-a79f19f8d810
		$a_81_1 = {24 32 32 30 63 64 38 38 30 2d 35 61 62 38 2d 34 34 63 66 2d 39 66 66 38 2d 64 61 66 36 64 61 32 33 32 37 34 65 } //14 00  $220cd880-5ab8-44cf-9ff8-daf6da23274e
		$a_81_2 = {24 33 33 66 32 63 61 36 30 2d 31 33 61 61 2d 34 38 61 64 2d 61 39 30 65 2d 36 65 64 62 61 64 65 65 32 37 32 66 } //14 00  $33f2ca60-13aa-48ad-a90e-6edbadee272f
		$a_81_3 = {24 31 65 65 62 64 62 32 30 2d 37 34 36 65 2d 34 30 39 31 2d 61 66 62 34 2d 66 36 35 34 39 33 36 61 39 62 63 38 } //01 00  $1eebdb20-746e-4091-afb4-f654936a9bc8
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //01 00  Activator
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00  DebuggingModes
	condition:
		any of ($a_*)
 
}