
rule Trojan_BAT_AgentTesla_FY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0d 00 00 "
		
	strings :
		$a_81_0 = {24 62 30 32 35 37 32 32 37 2d 30 65 35 35 2d 34 39 33 62 2d 62 33 31 38 2d 36 32 34 34 64 38 33 32 31 31 63 36 } //20 $b0257227-0e55-493b-b318-6244d83211c6
		$a_81_1 = {24 30 61 32 36 62 61 30 61 2d 65 65 38 61 2d 34 64 61 35 2d 39 63 33 63 2d 33 37 37 63 31 62 37 39 37 61 61 39 } //20 $0a26ba0a-ee8a-4da5-9c3c-377c1b797aa9
		$a_81_2 = {24 62 35 32 66 39 62 61 35 2d 38 62 33 63 2d 34 35 32 66 2d 61 37 64 61 2d 65 36 30 33 63 65 34 66 37 30 30 61 } //20 $b52f9ba5-8b3c-452f-a7da-e603ce4f700a
		$a_81_3 = {24 38 33 31 65 66 32 66 35 2d 35 61 31 31 2d 34 33 39 63 2d 38 66 34 36 2d 66 39 35 34 32 61 62 30 63 32 38 66 } //20 $831ef2f5-5a11-439c-8f46-f9542ab0c28f
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1) >=23
 
}
rule Trojan_BAT_AgentTesla_FY_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 0f 00 00 "
		
	strings :
		$a_81_0 = {24 33 30 30 39 44 33 38 41 2d 35 37 35 32 2d 34 45 41 32 2d 38 41 36 32 2d 37 36 34 33 36 30 39 33 32 43 37 31 } //20 $3009D38A-5752-4EA2-8A62-764360932C71
		$a_81_1 = {24 62 34 66 63 30 37 63 38 2d 33 35 31 31 2d 34 37 65 65 2d 39 35 64 66 2d 38 33 33 65 36 37 63 33 63 30 31 61 } //20 $b4fc07c8-3511-47ee-95df-833e67c3c01a
		$a_81_2 = {24 62 63 37 37 63 63 62 64 2d 66 33 61 64 2d 34 66 31 39 2d 38 62 36 30 2d 61 66 38 39 37 61 66 61 61 39 63 35 } //20 $bc77ccbd-f3ad-4f19-8b60-af897afaa9c5
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_4 = {4c 69 62 49 6e 55 73 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 LibInUse.My.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_6 = {53 6f 66 74 77 61 72 65 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 Software.My.Resources
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_8 = {46 69 6c 65 43 6f 70 69 65 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 FileCopier.Properties.Resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_11 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=24
 
}