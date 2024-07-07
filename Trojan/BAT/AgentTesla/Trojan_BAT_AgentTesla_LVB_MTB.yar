
rule Trojan_BAT_AgentTesla_LVB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LVB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f } //1
		$a_01_1 = {64 00 5f 00 ac 00 5f 00 5f 00 71 00 5f 00 4c 00 62 00 5f 00 b3 00 5f 00 97 00 70 00 5f 00 65 } //1
		$a_01_2 = {aa 00 61 00 af 00 90 00 5f 00 71 00 65 00 5f 00 61 00 5f 00 5f 00 67 00 5f 00 97 00 65 00 5f 00 5f 00 5f } //1
		$a_01_3 = {67 00 99 00 64 00 91 00 af 00 61 00 61 00 5f 00 9d 00 5f 00 6a 00 74 00 6b 00 97 00 62 00 65 00 71 00 77 00 6a 00 64 00 47 00 61 00 62 00 6b 00 af 00 61 00 6a } //1
		$a_01_4 = {71 00 5f 00 47 00 5f 00 5f 00 5f 00 5f 00 77 00 64 00 5f 00 5f 00 5f 00 71 00 6d 00 5f 00 5f 00 5f 00 af 00 a9 00 5f } //1
		$a_01_5 = {77 00 9c 00 8e 00 5f 00 5f 00 5f 00 5f 00 a3 00 62 00 5f 00 5f 00 5f 00 5f 00 5f 00 5f 00 } //1
		$a_01_6 = {00 5f 4a 4a 36 00 } //1 开䩊6
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}