
rule Trojan_BAT_Remcos_HE_MTB{
	meta:
		description = "Trojan:BAT/Remcos.HE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0d 00 00 "
		
	strings :
		$a_00_0 = {24 39 63 30 32 36 35 39 30 2d 66 39 31 38 2d 34 63 36 61 2d 61 33 65 62 2d 30 36 32 65 35 38 36 33 38 32 34 34 } //20 $9c026590-f918-4c6a-a3eb-062e58638244
		$a_00_1 = {24 32 32 63 32 62 38 61 63 2d 34 65 31 61 2d 34 61 37 65 2d 62 34 64 30 2d 63 32 38 65 37 61 38 37 63 62 63 36 } //20 $22c2b8ac-4e1a-4a7e-b4d0-c28e7a87cbc6
		$a_00_2 = {24 66 30 35 64 30 64 64 36 2d 61 36 65 64 2d 34 37 34 64 2d 61 38 32 35 2d 64 61 30 62 38 62 30 32 39 61 63 35 } //20 $f05d0dd6-a6ed-474d-a825-da0b8b029ac5
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_4 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_5 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_7 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_9 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_10 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_11 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_00_0  & 1)*20+(#a_00_1  & 1)*20+(#a_00_2  & 1)*20+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1) >=22
 
}