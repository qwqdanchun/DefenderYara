
rule Trojan_BAT_AgentTesla_LTK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LTK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 "
		
	strings :
		$a_01_0 = {23 67 73 64 67 67 64 73 61 64 73 61 64 67 67 67 67 67 23 } //1 #gsdggdsadsadggggg#
		$a_01_1 = {23 66 73 64 67 64 73 64 73 64 73 64 2e 64 6c 6c 23 } //1 #fsdgdsdsdsd.dll#
		$a_01_2 = {23 66 61 73 66 64 64 64 64 64 64 64 64 64 73 73 61 66 2e 64 6c 6c 23 } //1 #fasfdddddddddssaf.dll#
		$a_01_3 = {23 66 61 73 66 64 64 64 64 64 64 64 64 73 73 61 66 2e 64 6c 6c 23 } //1 #fasfddddddddssaf.dll#
		$a_01_4 = {23 66 61 73 66 64 61 61 61 61 61 61 61 61 64 73 73 73 61 66 2e 64 6c 6c 23 } //1 #fasfdaaaaaaaadsssaf.dll#
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_01_6 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=7
 
}