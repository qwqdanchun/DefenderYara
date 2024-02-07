
rule Trojan_BAT_AgentTesla_JUI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JUI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 33 64 32 62 36 64 62 31 2d 35 62 33 66 2d 34 37 39 34 2d 39 36 37 39 2d 61 30 64 38 34 30 39 39 66 39 36 64 } //01 00  $3d2b6db1-5b3f-4794-9679-a0d84099f96d
		$a_01_1 = {43 5f 5f 32 31 32 33 31 34 35 32 31 } //01 00  C__212314521
		$a_01_2 = {43 5f 5f 33 32 34 33 32 31 } //01 00  C__324321
		$a_01_3 = {50 61 72 61 6d 58 41 72 72 61 79 } //01 00  ParamXArray
		$a_01_4 = {50 61 72 61 6d 58 47 72 6f 75 70 } //01 00  ParamXGroup
		$a_01_5 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //01 00  RijndaelManaged
		$a_01_6 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_7 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}