
rule Trojan_BAT_AgentTesla_ALI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ALI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 "
		
	strings :
		$a_02_0 = {70 0c 07 20 90 01 03 00 28 90 01 03 0a 03 6f 90 01 08 0a 0d 06 09 6f 90 01 03 0a 00 06 18 6f 90 01 03 0a 00 02 6f 90 01 03 0a 16 02 6f 90 01 08 0a 13 04 28 90 01 03 0a 06 6f 90 01 03 0a 11 04 16 11 04 8e 69 6f 90 01 08 0a 0c 08 13 05 2b 00 11 05 2a 90 00 } //10
		$a_80_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //CreateDecryptor  1
		$a_80_2 = {46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 } //FromBase64CharArray  1
	condition:
		((#a_02_0  & 1)*10+(#a_80_1  & 1)*1+(#a_80_2  & 1)*1) >=12
 
}