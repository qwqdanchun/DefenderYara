
rule Trojan_BAT_AgentTesla_NQO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NQO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 78 75 75 75 78 75 75 75 78 74 74 74 78 73 73 73 72 6e 6e 6e 6b 6b 6b 6b 5f 60 60 60 50 5d 5d 5d 2e 54 54 54 0f 54 54 54 07 } //01 00 
		$a_81_1 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 72 6f 63 65 73 73 } //01 00  ShortPdddddddddddddddddddrocess
		$a_01_2 = {64 72 64 66 65 66 73 64 64 64 66 73 6c 6f 66 73 64 66 65 67 } //01 00  drdfefsdddfslofsdfeg
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_4 = {66 73 64 64 64 64 66 66 73 64 64 66 64 66 } //01 00  fsddddffsddfdf
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //00 00  GetMethod
	condition:
		any of ($a_*)
 
}