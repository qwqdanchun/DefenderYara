
rule Trojan_BAT_AgentTesla_NIK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NIK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,51 00 51 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 7b 00 22 00 73 00 74 00 61 00 74 00 75 00 73 00 22 00 3a 00 74 00 72 00 75 00 65 00 2c 00 22 00 64 00 61 00 74 00 61 00 22 00 3a 00 30 00 2e 00 30 00 30 00 30 00 30 00 34 00 31 00 33 00 30 00 32 00 34 00 34 00 39 00 32 00 35 00 38 00 35 00 36 00 34 00 7d } //0a 00 
		$a_01_1 = {53 79 73 74 65 6d 2e 52 65 73 6f 75 72 63 65 73 2e 54 6f 6f 6c 73 2e 53 74 72 6f 6e 67 6c 79 54 79 70 65 64 52 65 73 6f 75 72 63 65 42 75 69 6c 64 65 72 } //0a 00  System.Resources.Tools.StronglyTypedResourceBuilder
		$a_01_2 = {47 65 74 54 79 70 65 } //0a 00  GetType
		$a_01_3 = {47 65 74 4d 65 74 68 6f 64 } //0a 00  GetMethod
		$a_01_4 = {53 75 62 73 74 72 69 6e 67 } //0a 00  Substring
		$a_01_5 = {52 65 70 6c 61 63 65 } //0a 00  Replace
		$a_01_6 = {49 6e 76 6f 6b 65 } //0a 00  Invoke
		$a_01_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_80_8 = {53 6c 65 65 70 } //Sleep  01 00 
		$a_01_9 = {44 65 73 65 72 69 61 6c 69 7a 65 } //00 00  Deserialize
	condition:
		any of ($a_*)
 
}