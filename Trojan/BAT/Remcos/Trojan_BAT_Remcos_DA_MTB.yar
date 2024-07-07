
rule Trojan_BAT_Remcos_DA_MTB{
	meta:
		description = "Trojan:BAT/Remcos.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,22 00 22 00 0e 00 00 "
		
	strings :
		$a_81_0 = {24 34 39 33 62 39 34 30 64 2d 33 65 65 36 2d 34 32 62 31 2d 38 36 31 32 2d 32 30 64 30 32 35 37 30 34 66 32 62 } //5 $493b940d-3ee6-42b1-8612-20d025704f2b
		$a_81_1 = {70 69 63 74 75 72 65 42 6f 78 31 30 5f 43 6c 69 63 6b } //5 pictureBox10_Click
		$a_81_2 = {63 68 65 63 6b 42 6f 78 31 30 } //5 checkBox10
		$a_81_3 = {72 65 63 6f 76 65 72 31 30 } //5 recover10
		$a_81_4 = {74 65 78 74 42 6f 78 31 30 } //5 textBox10
		$a_81_5 = {63 6f 70 79 31 30 } //5 copy10
		$a_81_6 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 CheckRemoteDebuggerPresent
		$a_81_7 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_8 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //1 get_CurrentDomain
		$a_81_9 = {49 73 4c 6f 67 67 69 6e 67 } //1 IsLogging
		$a_81_10 = {67 65 74 5f 52 65 64 } //1 get_Red
		$a_81_11 = {73 65 74 5f 46 6f 72 6d 61 74 74 69 6e 67 45 6e 61 62 6c 65 64 } //1 set_FormattingEnabled
		$a_81_12 = {44 62 43 6f 6d 6d 61 6e 64 } //1 DbCommand
		$a_81_13 = {73 65 74 5f 42 61 63 6b 67 72 6f 75 6e 64 49 6d 61 67 65 } //1 set_BackgroundImage
	condition:
		((#a_81_0  & 1)*5+(#a_81_1  & 1)*5+(#a_81_2  & 1)*5+(#a_81_3  & 1)*5+(#a_81_4  & 1)*5+(#a_81_5  & 1)*5+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1+(#a_81_13  & 1)*1) >=34
 
}