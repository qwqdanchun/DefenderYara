
rule Trojan_BAT_AgentTesla_HO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.HO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 0f 00 00 "
		
	strings :
		$a_00_0 = {24 35 63 61 34 31 39 34 65 2d 66 35 31 62 2d 34 66 30 37 2d 61 64 65 38 2d 33 35 31 65 35 61 34 30 30 61 61 62 } //20 $5ca4194e-f51b-4f07-ade8-351e5a400aab
		$a_00_1 = {24 63 64 31 38 30 65 66 37 2d 63 66 65 64 2d 34 31 30 63 2d 61 32 39 63 2d 63 35 31 63 39 33 36 36 38 34 31 36 } //20 $cd180ef7-cfed-410c-a29c-c51c93668416
		$a_00_2 = {24 35 39 31 31 38 38 62 38 2d 35 66 32 32 2d 34 63 33 62 2d 38 37 30 65 2d 38 39 33 66 33 32 61 36 39 62 39 36 } //20 $591188b8-5f22-4c3b-870e-893f32a69b96
		$a_00_3 = {24 31 32 65 39 34 65 34 64 2d 32 38 66 66 2d 34 33 30 39 2d 62 32 65 35 2d 61 32 32 61 66 64 32 66 36 36 38 38 } //20 $12e94e4d-28ff-4309-b2e5-a22afd2f6688
		$a_00_4 = {24 64 63 65 34 30 65 33 64 2d 65 62 33 38 2d 34 63 65 36 2d 38 37 32 31 2d 38 33 35 33 61 65 66 64 65 63 62 66 } //20 $dce40e3d-eb38-4ce6-8721-8353aefdecbf
		$a_81_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_10 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_11 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_12 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_13 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_14 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_00_0  & 1)*20+(#a_00_1  & 1)*20+(#a_00_2  & 1)*20+(#a_00_3  & 1)*20+(#a_00_4  & 1)*20+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=20
 
}