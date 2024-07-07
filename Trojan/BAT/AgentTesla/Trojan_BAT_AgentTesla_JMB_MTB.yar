
rule Trojan_BAT_AgentTesla_JMB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 "
		
	strings :
		$a_01_0 = {00 58 5f 31 32 33 31 32 33 34 35 34 33 36 33 00 } //1 堀ㅟ㌲㈱㐳㐵㘳3
		$a_01_1 = {00 58 5f 34 35 36 31 00 } //1 堀㑟㘵1
		$a_01_2 = {54 6f 55 49 6e 74 33 32 } //1 ToUInt32
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
		$a_01_5 = {47 65 74 54 79 70 65 } //1 GetType
		$a_01_6 = {54 6f 43 68 61 72 41 72 72 61 79 } //1 ToCharArray
		$a_01_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_8 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //1 InvokeMember
		$a_01_9 = {54 65 78 74 45 6e 63 72 79 70 74 } //1 TextEncrypt
		$a_01_10 = {00 49 49 49 49 49 49 49 49 32 00 } //1
		$a_01_11 = {00 49 49 49 49 49 49 49 49 49 35 00 } //1 䤀䥉䥉䥉䥉5
		$a_01_12 = {00 49 49 49 49 49 49 49 49 49 49 31 00 } //1
		$a_01_13 = {00 49 49 49 49 49 49 49 49 49 49 49 33 00 } //1 䤀䥉䥉䥉䥉䥉3
		$a_01_14 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 34 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=15
 
}