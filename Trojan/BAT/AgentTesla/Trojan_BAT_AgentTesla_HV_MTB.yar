
rule Trojan_BAT_AgentTesla_HV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.HV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_81_0 = {70 61 70 77 6f 72 6c 64 2e 6e 65 74 } //1 papworld.net
		$a_81_1 = {43 61 70 74 75 72 65 53 63 72 65 65 6e } //1 CaptureScreen
		$a_81_2 = {43 6f 70 79 46 72 6f 6d 53 63 72 65 65 6e } //1 CopyFromScreen
		$a_81_3 = {53 65 6e 64 50 69 63 42 6f 64 79 } //1 SendPicBody
		$a_81_4 = {53 65 6e 64 4c 6f 67 42 6f 64 79 } //1 SendLogBody
		$a_81_5 = {53 65 6e 64 53 63 72 65 65 6e 53 68 6f 74 } //1 SendScreenShot
		$a_81_6 = {48 6f 6f 6b 4b 65 79 62 6f 61 72 64 } //1 HookKeyboard
		$a_81_7 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_8 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1) >=9
 
}
rule Trojan_BAT_AgentTesla_HV_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.HV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0e 00 00 "
		
	strings :
		$a_00_0 = {24 66 62 35 61 61 35 32 66 2d 39 66 37 65 2d 34 62 65 34 2d 62 63 61 64 2d 38 36 36 64 61 31 37 31 36 34 30 33 } //20 $fb5aa52f-9f7e-4be4-bcad-866da1716403
		$a_00_1 = {24 31 30 64 31 31 36 31 65 2d 66 37 66 65 2d 34 65 38 66 2d 62 37 63 39 2d 35 31 38 30 32 37 62 65 61 61 36 37 } //20 $10d1161e-f7fe-4e8f-b7c9-518027beaa67
		$a_00_2 = {24 31 39 39 37 63 30 33 66 2d 61 65 66 61 2d 34 65 33 31 2d 39 38 39 31 2d 38 63 34 34 30 36 36 31 66 31 36 38 } //20 $1997c03f-aefa-4e31-9891-8c440661f168
		$a_00_3 = {24 65 37 39 32 37 36 33 30 2d 65 62 64 30 2d 34 61 35 35 2d 61 34 66 66 2d 34 34 34 32 37 61 65 36 36 37 30 39 } //20 $e7927630-ebd0-4a55-a4ff-44427ae66709
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_8 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_9 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_10 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_11 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_00_0  & 1)*20+(#a_00_1  & 1)*20+(#a_00_2  & 1)*20+(#a_00_3  & 1)*20+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1) >=22
 
}