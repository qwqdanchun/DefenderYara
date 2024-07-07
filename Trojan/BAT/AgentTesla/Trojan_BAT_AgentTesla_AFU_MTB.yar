
rule Trojan_BAT_AgentTesla_AFU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AFU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 "
		
	strings :
		$a_03_0 = {1e 9a 0c 19 8d 90 01 03 01 25 16 72 90 01 03 70 a2 25 17 7e 90 01 03 04 a2 25 18 7e 90 01 03 04 a2 0d 09 28 90 01 03 0a 00 08 09 28 90 01 03 0a 26 20 00 08 00 00 0a 2b 00 06 2a 90 00 } //10
		$a_80_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //CreateInstance  1
		$a_80_2 = {52 65 76 65 72 73 65 } //Reverse  1
		$a_80_3 = {47 65 74 54 79 70 65 73 } //GetTypes  1
	condition:
		((#a_03_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1+(#a_80_3  & 1)*1) >=13
 
}