
rule Trojan_BAT_ElysiumStealer_DF_MTB{
	meta:
		description = "Trojan:BAT/ElysiumStealer.DF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 0d 00 00 "
		
	strings :
		$a_81_0 = {47 6c 6f 72 79 5f 74 6f 5f 74 68 65 5f 47 72 65 61 74 5f 4c 65 6e 69 6e 5f 61 6e 64 5f 74 68 65 5f 4f 63 74 6f 62 65 72 5f 52 65 76 6f 6c 75 74 69 6f 6e } //20 Glory_to_the_Great_Lenin_and_the_October_Revolution
		$a_81_1 = {6a 6b 61 6c 73 6a 64 6e 61 73 6b 64 61 73 } //20 jkalsjdnaskdas
		$a_81_2 = {67 73 64 66 66 64 73 73 64 66 67 73 64 66 73 64 } //20 gsdffdssdfgsdfsd
		$a_81_3 = {6a 64 66 67 68 64 66 67 64 66 } //20 jdfghdfgdf
		$a_81_4 = {73 64 66 73 64 66 73 64 66 73 64 66 73 64 66 73 64 } //20 sdfsdfsdfsdfsdfsd
		$a_81_5 = {67 73 64 67 73 64 66 } //20 gsdgsdf
		$a_81_6 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //1 IsDebuggerPresent
		$a_81_7 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 ToBase64String
		$a_81_8 = {74 65 73 74 65 72 } //1 tester
		$a_81_9 = {44 65 63 6f 6d 70 72 65 73 73 } //1 Decompress
		$a_81_10 = {44 65 63 72 79 70 74 } //1 Decrypt
		$a_81_11 = {52 65 76 65 72 73 65 44 65 63 6f 64 65 } //1 ReverseDecode
		$a_81_12 = {65 73 68 65 6c 6f 6e } //1 eshelon
	condition:
		((#a_81_0  & 1)*20+(#a_81_1  & 1)*20+(#a_81_2  & 1)*20+(#a_81_3  & 1)*20+(#a_81_4  & 1)*20+(#a_81_5  & 1)*20+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1) >=27
 
}