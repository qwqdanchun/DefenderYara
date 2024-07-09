
rule Trojan_BAT_AgentTesla_FB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {70 0b 16 0c 02 6f ?? ?? ?? 0a 0d 2b 35 02 08 6f ?? ?? ?? 0a 28 ?? ?? ?? 0a 13 04 11 04 28 ?? ?? ?? 0a 20 18 04 00 00 da 13 05 07 11 05 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 0b 08 17 d6 0c 00 08 09 fe 04 13 06 11 06 2d c1 07 0a 2b 00 } //1
		$a_81_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_2 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_03_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1) >=3
 
}
rule Trojan_BAT_AgentTesla_FB_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0d 00 00 "
		
	strings :
		$a_81_0 = {24 32 37 63 36 63 34 38 66 2d 39 65 31 35 2d 34 62 30 65 2d 62 61 32 39 2d 65 34 61 38 66 65 66 61 38 31 64 30 } //20 $27c6c48f-9e15-4b0e-ba29-e4a8fefa81d0
		$a_81_1 = {24 37 63 37 37 61 39 63 39 2d 35 65 33 32 2d 34 38 34 39 2d 61 34 38 30 2d 63 63 65 32 39 32 34 30 31 61 35 65 } //20 $7c77a9c9-5e32-4849-a480-cce292401a5e
		$a_81_2 = {24 34 33 37 38 33 64 31 35 2d 66 39 31 36 2d 34 64 65 65 2d 38 36 33 31 2d 33 30 37 35 66 61 38 33 35 62 30 32 } //20 $43783d15-f916-4dee-8631-3075fa835b02
		$a_81_3 = {24 34 63 32 33 30 32 31 39 2d 39 33 65 39 2d 34 32 36 64 2d 38 37 39 37 2d 39 62 37 35 32 35 38 63 62 34 36 65 } //20 $4c230219-93e9-426d-8797-9b75258cb46e
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