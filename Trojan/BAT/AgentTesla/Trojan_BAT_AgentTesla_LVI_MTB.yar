
rule Trojan_BAT_AgentTesla_LVI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LVI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {23 66 73 64 6b 61 66 61 6e 6b 6b 6b 61 73 66 23 } //1 #fsdkafankkkasf#
		$a_01_1 = {23 67 73 64 67 67 64 6c 6c 66 73 66 6c 6c 6c 6c 6c 6f 6b 6f 73 61 64 73 61 64 67 67 67 67 67 23 } //1 #gsdggdllfsflllllokosadsadggggg#
		$a_01_2 = {23 66 61 73 66 66 61 73 64 64 64 64 64 6f 6b 75 69 6a 6f 75 69 6c 70 6f 64 64 64 64 73 73 61 66 2e 64 6c 6c 23 } //1 #fasffasdddddokuijouilpoddddssaf.dll#
		$a_01_3 = {23 69 6a 66 61 6b 6b 6b 2e 64 6c 6c 23 } //1 #ijfakkk.dll#
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 } //1 FromBase64
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //1 GetMethod
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}