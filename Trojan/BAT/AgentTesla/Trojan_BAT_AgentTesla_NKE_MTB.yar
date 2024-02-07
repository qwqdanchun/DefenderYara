
rule Trojan_BAT_AgentTesla_NKE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NKE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 65 36 66 37 35 33 38 31 2d 38 64 33 38 2d 34 64 64 64 2d 38 65 30 33 2d 64 37 35 61 30 66 36 65 37 37 34 30 } //01 00  $e6f75381-8d38-4ddd-8e03-d75a0f6e7740
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_3 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_4 = {00 47 65 74 54 79 70 65 00 } //01 00 
		$a_01_5 = {00 53 70 6c 69 74 00 } //01 00 
		$a_01_6 = {00 53 75 62 73 74 72 69 6e 67 00 } //01 00 
		$a_01_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerStepThroughAttribute
	condition:
		any of ($a_*)
 
}