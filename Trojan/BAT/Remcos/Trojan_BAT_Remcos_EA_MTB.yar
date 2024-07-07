
rule Trojan_BAT_Remcos_EA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.EA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 0f 00 00 "
		
	strings :
		$a_81_0 = {24 31 34 35 63 30 31 38 31 2d 66 38 63 33 2d 34 39 64 61 2d 38 32 65 34 2d 39 61 61 62 63 39 32 39 66 64 65 35 } //20 $145c0181-f8c3-49da-82e4-9aabc929fde5
		$a_81_1 = {24 62 38 65 61 63 62 34 38 2d 62 33 30 66 2d 34 63 32 64 2d 39 39 34 62 2d 30 33 30 61 35 64 66 61 36 36 31 32 } //20 $b8eacb48-b30f-4c2d-994b-030a5dfa6612
		$a_81_2 = {24 64 32 30 39 39 34 34 35 2d 37 33 64 38 2d 34 32 30 39 2d 38 37 65 31 2d 33 37 31 31 34 30 62 37 39 63 34 66 } //20 $d2099445-73d8-4209-87e1-371140b79c4f
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //5 CreateInstance
		$a_81_4 = {41 63 74 69 76 61 74 6f 72 } //5 Activator
		$a_81_5 = {46 69 78 41 50 69 78 2e 52 65 73 6f 75 72 63 65 73 } //1 FixAPix.Resources
		$a_81_6 = {49 6d 61 67 65 5f 45 64 69 74 6f 72 2e 52 65 73 6f 75 72 63 65 73 } //1 Image_Editor.Resources
		$a_81_7 = {43 6f 64 65 77 6f 72 64 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Codewords.Resources.resources
		$a_81_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_10 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*5+(#a_81_4  & 1)*5+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=33
 
}