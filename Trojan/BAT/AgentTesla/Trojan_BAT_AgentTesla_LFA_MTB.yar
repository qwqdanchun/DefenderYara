
rule Trojan_BAT_AgentTesla_LFA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 "
		
	strings :
		$a_03_0 = {06 08 20 00 38 01 00 5d 06 08 20 00 38 01 00 5d 91 07 08 1f 16 5d 6f ?? ?? ?? 0a 61 28 ?? ?? ?? 0a 06 08 17 58 20 00 38 01 00 5d 91 28 ?? ?? ?? 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d 28 ?? ?? ?? 0a 9c 08 15 58 0c 08 16 2f b4 } //10
		$a_01_1 = {43 00 34 00 59 00 39 00 37 00 4a 00 42 00 38 00 37 00 47 00 47 00 48 00 37 00 30 00 47 00 59 00 55 00 48 00 38 00 54 00 43 00 50 00 } //1 C4Y97JB87GGH70GYUH8TCP
		$a_01_2 = {54 00 61 00 67 00 43 00 6c 00 69 00 65 00 6e 00 74 00 } //1 TagClient
		$a_01_3 = {69 00 66 00 63 00 58 00 35 00 67 00 4c 00 45 00 54 00 } //1 ifcX5gLET
		$a_81_4 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
		$a_81_5 = {49 6e 76 6f 6b 65 } //1 Invoke
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1) >=15
 
}