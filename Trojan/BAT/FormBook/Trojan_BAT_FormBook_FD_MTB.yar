
rule Trojan_BAT_FormBook_FD_MTB{
	meta:
		description = "Trojan:BAT/FormBook.FD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 0f 00 00 "
		
	strings :
		$a_81_0 = {24 66 61 64 37 39 62 65 63 2d 61 65 30 37 2d 34 39 38 39 2d 62 62 62 31 2d 62 66 35 37 30 37 65 35 64 37 39 39 } //20 $fad79bec-ae07-4989-bbb1-bf5707e5d799
		$a_01_1 = {24 42 46 39 36 36 39 33 35 2d 46 33 36 32 2d 34 42 46 46 2d 41 46 39 36 2d 42 38 33 42 35 44 35 42 38 38 43 41 } //20 $BF966935-F362-4BFF-AF96-B83B5D5B88CA
		$a_81_2 = {24 37 63 66 37 65 30 37 61 2d 39 31 38 38 2d 34 30 62 34 2d 38 61 30 30 2d 61 37 32 63 36 64 61 61 33 30 65 35 } //20 $7cf7e07a-9188-40b4-8a00-a72c6daa30e5
		$a_81_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_4 = {4f 70 65 6e 46 54 50 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 OpenFTP.Properties.Resources
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_6 = {54 54 53 49 2e 42 41 52 43 4f 44 45 53 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 TTSI.BARCODES.Resources.resources
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_8 = {43 6c 6f 75 64 61 72 79 53 74 6f 72 61 67 65 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //1 CloudaryStorage.Form1.resources
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_10 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_11 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_12 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_81_0  & 1)*20+(#a_01_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1) >=23
 
}
rule Trojan_BAT_FormBook_FD_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.FD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 11 00 00 "
		
	strings :
		$a_81_0 = {24 66 62 33 35 66 35 65 39 2d 63 39 62 30 2d 34 34 62 62 2d 62 30 62 38 2d 32 61 63 37 30 37 33 63 38 31 36 65 } //20 $fb35f5e9-c9b0-44bb-b0b8-2ac7073c816e
		$a_81_1 = {24 39 38 35 32 32 64 61 62 2d 66 33 65 36 2d 34 62 37 63 2d 62 62 37 66 2d 35 62 62 30 37 65 63 37 36 35 37 35 } //20 $98522dab-f3e6-4b7c-bb7f-5bb07ec76575
		$a_81_2 = {24 30 31 37 66 38 65 62 37 2d 30 37 36 39 2d 34 65 35 30 2d 62 61 64 38 2d 63 37 64 31 30 34 31 63 37 34 63 37 } //20 $017f8eb7-0769-4e50-bad8-c7d1041c74c7
		$a_81_3 = {24 64 39 65 33 31 39 62 65 2d 34 37 65 30 2d 34 38 63 32 2d 39 63 63 62 2d 62 36 63 33 62 37 32 30 35 34 36 36 } //20 $d9e319be-47e0-48c2-9ccb-b6c3b7205466
		$a_81_4 = {41 75 64 69 6f 5f 52 65 61 6c 74 65 6b 5f 44 72 69 76 65 72 2e 52 65 73 6f 75 72 63 65 73 } //1 Audio_Realtek_Driver.Resources
		$a_81_5 = {57 69 6e 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //1 Win.My.Resources
		$a_81_6 = {47 75 6e 7a 5f 4c 61 75 6e 63 68 65 72 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //1 Gunz_Launcher.Resources.resources
		$a_81_7 = {53 75 64 6f 6b 75 5f 4f 6e 6c 69 6e 65 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //1 Sudoku_Online.Properties.Resources
		$a_81_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_10 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_12 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_13 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_14 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_81_15 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_16 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1) >=23
 
}