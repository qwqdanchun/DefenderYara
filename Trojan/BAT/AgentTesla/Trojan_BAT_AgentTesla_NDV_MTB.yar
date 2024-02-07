
rule Trojan_BAT_AgentTesla_NDV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NDV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {42 00 75 00 6e 00 69 00 66 00 75 00 5f 00 54 00 65 00 78 00 74 00 42 00 6f 00 78 } //0a 00 
		$a_01_1 = {66 65 35 33 65 31 34 31 2d 38 38 31 32 2d 34 39 30 66 2d 61 65 37 61 2d 35 36 32 37 61 37 39 34 30 39 32 65 } //01 00  fe53e141-8812-490f-ae7a-5627a794092e
		$a_01_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_3 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerHiddenAttribute
		$a_01_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerBrowsableAttribute
		$a_01_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00  DebuggerBrowsableState
		$a_01_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00  CreateInstance
	condition:
		any of ($a_*)
 
}