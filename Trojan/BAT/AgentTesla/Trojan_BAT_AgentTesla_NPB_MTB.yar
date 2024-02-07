
rule Trojan_BAT_AgentTesla_NPB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NPB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {75 00 88 25 88 25 44 00 88 25 88 25 88 25 88 25 4c 00 67 00 88 25 88 25 77 00 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 } //01 00 
		$a_01_1 = {39 00 b6 00 b6 00 60 00 49 00 47 00 31 00 76 00 5a 00 47 00 55 00 75 00 44 00 51 00 30 00 4b 00 93 25 93 25 93 25 93 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 } //01 00 
		$a_01_2 = {43 00 34 00 88 25 88 25 88 25 88 25 88 25 88 25 88 25 88 25 46 00 88 25 88 25 88 25 88 25 88 25 88 25 52 00 46 00 67 00 73 00 72 00 47 00 77 00 88 25 88 25 48 00 46 00 2f 00 34 00 92 25 4c 00 88 25 88 25 49 00 59 } //01 00 
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_4 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}