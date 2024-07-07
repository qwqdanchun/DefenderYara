
rule Trojan_BAT_AgentTesla_JII_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JII!MTB,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 0c 00 00 "
		
	strings :
		$a_81_0 = {35 33 62 33 37 31 66 64 2d 32 64 33 66 2d 34 34 62 34 2d 61 35 64 39 2d 33 31 39 64 30 38 62 62 33 64 66 63 } //40 53b371fd-2d3f-44b4-a5d9-319d08bb3dfc
		$a_81_1 = {32 36 30 64 36 30 36 30 2d 34 30 64 64 2d 34 39 32 36 2d 39 37 33 62 2d 37 36 38 66 37 38 66 31 34 64 31 32 } //40 260d6060-40dd-4926-973b-768f78f14d12
		$a_81_2 = {78 78 78 31 00 63 6f 6d 70 6f 6e 65 6e 74 73 00 49 43 6f 6e 74 61 69 6e 65 72 00 47 65 74 78 78 78 00 53 65 74 78 78 78 } //1 硸ㅸ挀浯潰敮瑮s䍉湯慴湩牥䜀瑥硸x敓硴硸
		$a_01_3 = {52 5f 46 00 73 00 64 00 51 5f 41 00 74 00 57 5f 53 00 78 7a 00 41 5f 5a } //1 归Fsd彑At彗S穸䄀婟
		$a_81_4 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //1 RijndaelManaged
		$a_81_5 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 00 } //1
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerNonUserCodeAttribute
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggerBrowsableAttribute
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //1 DebuggerBrowsableState
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_10 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //1 CreateDecryptor
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
	condition:
		((#a_81_0  & 1)*40+(#a_81_1  & 1)*40+(#a_81_2  & 1)*1+(#a_01_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=50
 
}