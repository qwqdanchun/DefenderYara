
rule Trojan_BAT_AgentTesla_DFC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DFC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 0d 00 00 "
		
	strings :
		$a_01_0 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 4d 00 65 00 6d 00 62 00 65 00 72 00 } //1 InvokeMember
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 } //1 System.Convert
		$a_01_2 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //1 FromBase64String
		$a_01_3 = {74 00 66 00 2e 00 64 00 72 00 } //1 tf.dr
		$a_01_4 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //1 GetTypeFromHandle
		$a_01_5 = {49 00 42 00 6e 00 42 00 76 00 42 00 6f 00 42 00 6b 00 42 00 65 00 } //1 IBnBvBoBkBe
		$a_01_6 = {00 54 6f 44 6f 75 62 6c 65 00 } //1 吀䑯畯汢e
		$a_01_7 = {00 49 4f 39 32 31 33 31 00 } //1
		$a_01_8 = {00 49 4f 39 32 31 33 32 00 } //1
		$a_01_9 = {00 49 4f 39 32 31 33 33 00 } //1
		$a_01_10 = {00 49 4f 39 32 31 33 34 00 } //1
		$a_01_11 = {00 49 4f 39 32 31 33 35 00 } //1
		$a_01_12 = {54 6f 43 68 61 72 41 72 72 61 79 } //1 ToCharArray
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1) >=13
 
}