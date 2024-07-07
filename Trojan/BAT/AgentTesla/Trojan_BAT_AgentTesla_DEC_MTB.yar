
rule Trojan_BAT_AgentTesla_DEC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {08 09 11 04 6f 90 01 03 0a 13 07 08 09 11 04 6f 90 01 03 0a 13 08 11 08 28 90 01 03 0a 13 09 07 06 11 09 d2 9c 00 11 04 17 58 13 04 11 04 08 6f 90 01 03 0a fe 04 13 0a 11 0a 2d c3 90 00 } //1
		$a_01_1 = {47 65 74 50 69 78 65 6c } //1 GetPixel
		$a_01_2 = {54 6f 57 69 6e 33 32 } //1 ToWin32
		$a_01_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
		$a_01_4 = {47 65 74 54 79 70 65 } //1 GetType
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}