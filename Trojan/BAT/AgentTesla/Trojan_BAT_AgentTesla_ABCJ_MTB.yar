
rule Trojan_BAT_AgentTesla_ABCJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABCJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {13 04 06 11 04 6f 90 01 03 0a 06 18 6f 90 01 03 0a 28 90 01 03 06 0c 06 6f 90 01 03 0a 08 16 08 8e 69 6f 90 01 03 0a 13 05 de 0e 07 6f 90 01 03 0a dc 90 00 } //01 00 
		$a_01_1 = {54 72 61 6e 73 66 6f 72 6d 46 69 6e 61 6c 42 6c 6f 63 6b } //01 00 
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}