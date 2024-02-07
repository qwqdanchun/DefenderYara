
rule Trojan_BAT_AgentTesla_NYH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NYH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 36 61 33 64 65 61 30 66 2d 30 39 31 31 2d 34 66 37 30 2d 62 65 31 63 2d 35 63 38 63 34 39 30 34 34 30 33 61 } //01 00  $6a3dea0f-0911-4f70-be1c-5c8c4904403a
		$a_01_1 = {47 5a 69 70 53 74 72 65 61 6d } //01 00  GZipStream
		$a_01_2 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_4 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggerNonUserCodeAttribute
	condition:
		any of ($a_*)
 
}