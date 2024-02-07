
rule Trojan_BAT_AgentTesla_HG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.HG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {03 11 04 18 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 04 07 6f 90 01 03 0a 28 90 01 03 0a 6a 61 b7 28 90 01 08 28 90 01 09 6f 90 01 03 0a 26 07 04 6f 90 01 03 0a 17 90 00 } //01 00 
		$a_80_1 = {43 6f 6e 63 61 74 } //Concat  01 00 
		$a_80_2 = {49 53 65 63 74 69 6f 6e 45 6e 74 72 79 } //ISectionEntry  00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_HG_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.HG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0e 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 66 37 34 64 63 65 65 39 2d 32 31 33 30 2d 34 66 36 66 2d 38 33 62 32 2d 31 61 33 34 63 66 35 38 61 61 33 66 } //14 00  $f74dcee9-2130-4f6f-83b2-1a34cf58aa3f
		$a_00_1 = {24 33 38 61 35 36 33 34 33 2d 36 65 35 30 2d 34 66 36 33 2d 39 66 38 33 2d 37 39 66 62 33 32 30 30 35 61 37 31 } //14 00  $38a56343-6e50-4f63-9f83-79fb32005a71
		$a_00_2 = {24 30 32 64 65 63 62 34 64 2d 61 39 37 33 2d 34 61 65 34 2d 39 30 63 66 2d 34 62 31 64 61 37 63 35 64 33 65 34 } //14 00  $02decb4d-a973-4ae4-90cf-4b1da7c5d3e4
		$a_00_3 = {24 66 35 39 30 33 33 34 61 2d 35 61 63 35 2d 34 38 32 65 2d 39 38 31 61 2d 31 63 39 63 37 37 66 31 38 65 39 65 } //01 00  $f590334a-5ac5-482e-981a-1c9c77f18e9e
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_81_10 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00  DebuggingModes
		$a_81_11 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}