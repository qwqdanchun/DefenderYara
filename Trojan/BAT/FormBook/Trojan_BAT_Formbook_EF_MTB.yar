
rule Trojan_BAT_Formbook_EF_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1d 00 12 00 00 "
		
	strings :
		$a_81_0 = {24 35 63 36 36 64 65 63 34 2d 30 64 32 33 2d 34 39 38 31 2d 39 38 37 38 2d 30 61 66 61 38 64 65 38 36 39 36 66 } //20 $5c66dec4-0d23-4981-9878-0afa8de8696f
		$a_81_1 = {24 61 66 34 38 38 33 63 66 2d 31 35 30 37 2d 34 34 39 35 2d 62 35 39 39 2d 61 32 35 65 62 38 32 63 64 35 37 31 } //20 $af4883cf-1507-4495-b599-a25eb82cd571
		$a_81_2 = {24 32 34 32 33 62 35 31 32 2d 35 65 30 63 2d 34 39 62 31 2d 38 30 31 62 2d 63 39 62 37 63 32 33 62 32 34 30 38 } //20 $2423b512-5e0c-49b1-801b-c9b7c23b2408
		$a_81_3 = {24 31 37 64 34 37 36 66 38 2d 32 66 36 63 2d 34 33 39 39 2d 61 37 66 35 2d 36 30 37 31 65 64 31 36 64 38 31 31 } //20 $17d476f8-2f6c-4399-a7f5-6071ed16d811
		$a_81_4 = {46 72 61 6d 77 6f 72 6b 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //5 Framwork.Properties.Resources
		$a_81_5 = {78 78 78 78 78 78 78 78 78 78 78 78 78 78 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //5 xxxxxxxxxxxxxx.My.Resources
		$a_81_6 = {6c 69 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //5 li.My.Resources
		$a_81_7 = {50 72 6f 63 65 73 73 5f 4d 6f 6e 69 74 6f 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //5 Process_Monitor.Properties.Resources
		$a_81_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_81_9 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_10 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //1 DebuggerHiddenAttribute
		$a_81_11 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //1 DebuggerStepThroughAttribute
		$a_81_12 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_13 = {41 63 74 69 76 61 74 6f 72 } //1 Activator
		$a_81_14 = {52 53 4d 5f 44 65 63 72 79 70 74 } //1 RSM_Decrypt
		$a_81_15 = {67 65 74 5f 43 72 79 70 74 65 64 } //1 get_Crypted
		$a_81_16 = {67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 } //1 get_EntryPoint
		$a_81_17 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*5+(#a_81_5  & 1)*5+(#a_81_6  & 1)*5+(#a_81_7  & 1)*5+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1+(#a_81_14  & 1)*1+(#a_81_15  & 1)*1+(#a_81_16  & 1)*1+(#a_81_17  & 1)*1) >=29
 
}