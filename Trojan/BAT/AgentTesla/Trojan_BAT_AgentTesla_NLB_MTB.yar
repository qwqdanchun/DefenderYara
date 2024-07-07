
rule Trojan_BAT_AgentTesla_NLB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NLB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 "
		
	strings :
		$a_01_0 = {54 00 56 00 71 00 51 00 4a 06 4a 06 4d 00 4a 06 4a 06 4a 06 4a 06 45 00 4a 06 4a 06 4a 06 4a 06 2f 00 2f } //1
		$a_01_1 = {4a 06 4a 06 45 00 43 00 67 00 59 00 66 00 2f 00 53 00 34 00 45 00 42 00 68 00 63 00 7a 00 43 00 67 00 44 00 65 } //1
		$a_01_2 = {4a 06 4a 06 45 00 4a 06 33 00 73 00 72 00 4a 06 4a 06 4a 06 45 00 4b 00 4b 00 51 00 4a 06 4a 06 4a 06 59 00 71 00 4a } //1
		$a_01_3 = {32 64 39 63 65 38 65 2d 39 66 38 63 2d 34 63 64 65 2d 62 35 32 35 2d 32 32 36 62 36 36 34 64 39 34 } //1 2d9ce8e-9f8c-4cde-b525-226b664d94
		$a_01_4 = {42 00 57 00 67 00 4b 00 45 00 51 00 2f 00 4a 06 56 00 57 00 67 00 4b 00 77 00 51 00 2f 00 4a 06 56 00 57 00 67 00 4c 00 67 00 51 00 2f 00 4a 06 56 00 57 00 67 00 4d } //1
		$a_01_5 = {68 00 68 00 56 00 47 00 46 00 79 00 5a 00 32 00 56 00 30 00 4a 06 45 00 4a 00 6c 00 64 00 47 00 46 00 55 00 59 00 58 00 4a 00 6e 00 5a 00 58 00 51 00 4a 06 55 } //1
		$a_01_6 = {4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 73 00 4a 06 4a 06 4a } //1
		$a_01_7 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_01_8 = {52 65 70 6c 61 63 65 } //1 Replace
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=9
 
}