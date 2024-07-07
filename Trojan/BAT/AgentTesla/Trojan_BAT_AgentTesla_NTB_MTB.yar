
rule Trojan_BAT_AgentTesla_NTB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NTB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {6e 00 4a 00 76 00 72 00 4d 00 41 00 63 00 39 00 44 00 55 00 6c 00 32 00 76 00 35 00 43 00 51 00 4d 00 59 00 37 00 4c 00 63 00 4a 00 39 00 61 00 41 00 4f 00 75 00 6f 00 37 00 67 00 37 00 51 00 72 00 } //1 nJvrMAc9DUl2v5CQMY7LcJ9aAOuo7g7Qr
		$a_01_1 = {5a 00 6e 00 76 00 39 00 69 00 75 00 36 00 6f 00 34 00 4d 00 59 00 78 00 2b 00 54 00 58 00 77 00 34 00 64 00 66 00 4a 00 59 00 6a 00 77 00 41 00 42 00 6a 00 58 00 77 00 32 00 63 00 2b 00 4a 00 70 00 34 00 35 00 6c 00 75 00 2f 00 6e 00 4a } //1
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_3 = {52 65 70 6c 61 63 65 } //1 Replace
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}