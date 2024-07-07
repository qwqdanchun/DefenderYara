
rule Trojan_BAT_AgentTesla_NLS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NLS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {07 16 fe 02 16 fe 01 0c 08 2c 1c 07 17 d6 0b 06 72 90 01 03 70 28 90 01 03 0a 8c 90 01 03 01 6f 90 01 03 0a 00 2b d8 90 00 } //1
		$a_01_1 = {54 6f 49 6e 74 33 32 } //1 ToInt32
		$a_01_2 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //1 GetObjectValue
		$a_01_3 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //1 GetExecutingAssembly
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //1 CreateInstance
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}