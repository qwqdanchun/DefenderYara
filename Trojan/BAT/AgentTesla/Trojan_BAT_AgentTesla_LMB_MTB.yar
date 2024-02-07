
rule Trojan_BAT_AgentTesla_LMB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 34 35 38 39 33 64 31 30 2d 62 31 61 61 2d 34 64 65 31 2d 62 36 62 35 2d 63 37 65 35 61 36 61 33 37 66 33 30 } //01 00  $45893d10-b1aa-4de1-b6b5-c7e5a6a37f30
		$a_01_1 = {43 5f 5f 32 31 32 33 31 34 35 32 31 } //01 00  C__212314521
		$a_01_2 = {43 5f 5f 33 32 34 33 32 31 } //01 00  C__324321
		$a_01_3 = {50 61 72 61 6d 58 41 72 72 61 79 } //01 00  ParamXArray
		$a_01_4 = {50 61 72 61 6d 58 47 72 6f 75 70 } //01 00  ParamXGroup
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_6 = {46 6f 72 6d 31 } //01 00  Form1
		$a_01_7 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}