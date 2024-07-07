
rule Trojan_BAT_AgentTesla_CUN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CUN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {00 5f 58 5f 58 30 46 54 5f 46 54 31 00 4d 65 73 73 61 67 65 00 } //1
		$a_01_1 = {00 5f 58 5f 58 30 46 54 5f 46 54 32 00 53 00 } //1
		$a_01_2 = {00 52 53 4d 00 49 6e 74 65 78 74 00 } //1 刀䵓䤀瑮硥t
		$a_81_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_81_4 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_5 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_7 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 } //1 DebuggingMode
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}