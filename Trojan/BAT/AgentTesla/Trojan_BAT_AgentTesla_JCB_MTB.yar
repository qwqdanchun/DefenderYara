
rule Trojan_BAT_AgentTesla_JCB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JCB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0c 00 00 "
		
	strings :
		$a_81_0 = {61 72 75 62 61 5f 33 32 39 32 33 } //1 aruba_32923
		$a_81_1 = {61 6e 67 75 69 6c 6c 61 5f 33 32 39 32 34 } //1 anguilla_32924
		$a_81_2 = {61 75 73 74 61 6c 6c 69 61 5f 33 32 39 31 32 } //1 austallia_32912
		$a_81_3 = {61 6e 74 69 67 75 61 5f 33 32 39 31 30 } //1 antigua_32910
		$a_81_4 = {61 72 67 65 6e 74 69 6e 61 5f 33 32 39 31 39 } //1 argentina_32919
		$a_81_5 = {61 72 6d 65 6e 69 61 5f 33 32 39 32 35 } //1 armenia_32925
		$a_81_6 = {61 6e 74 61 72 63 74 69 63 61 5f 33 33 31 35 31 } //1 antarctica_33151
		$a_81_7 = {47 65 74 4f 62 6a 65 63 74 } //1 GetObject
		$a_81_8 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //1 FromBase64String
		$a_81_9 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_81_10 = {52 65 70 6c 61 63 65 } //1 Replace
		$a_81_11 = {43 6c 61 73 73 4c 69 62 72 61 72 79 } //1 ClassLibrary
	condition:
		((#a_81_0  & 1)*1+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1) >=12
 
}