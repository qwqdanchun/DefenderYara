
rule Trojan_BAT_AgentTesla_BNI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BNI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 07 03 6f 90 01 03 0a 5d 17 58 28 90 01 03 0a 28 90 01 03 0a 59 0c 90 09 0c 00 02 07 28 90 01 03 0a 28 90 01 03 0a 90 00 } //01 00 
		$a_01_1 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_4 = {54 6f 43 68 61 72 41 72 72 61 79 } //01 00  ToCharArray
		$a_01_5 = {00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 } //00 00 
	condition:
		any of ($a_*)
 
}