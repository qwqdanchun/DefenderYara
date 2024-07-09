
rule Trojan_BAT_AgentTesla_MBGH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBGH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {04 1f 1a 7e ?? 00 00 04 1f 1a 93 7e ?? 00 00 04 20 33 01 00 00 93 61 1f 56 5f 9d 2a } //1
		$a_03_1 = {0a 0d 08 74 ?? 00 00 01 16 73 ?? 00 00 0a 73 ?? 00 00 0a 13 04 11 04 75 ?? 00 00 01 09 75 ?? 00 00 01 6f ?? 00 00 0a de 45 } //1
		$a_01_2 = {62 35 38 65 34 63 33 33 66 64 34 36 61 66 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //1 b58e4c33fd46af.Resources.resource
		$a_01_3 = {54 73 36 61 38 47 39 4e 6d 70 34 4a 32 51 78 45 6a 37 62 33 57 35 44 64 46 67 31 30 53 63 4d 71 32 37 4c } //1 Ts6a8G9Nmp4J2QxEj7b3W5DdFg10ScMq27L
		$a_01_4 = {38 37 62 62 2d 63 61 36 62 33 39 36 33 37 33 65 39 } //1 87bb-ca6b396373e9
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}