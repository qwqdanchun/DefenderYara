
rule Trojan_BAT_AgentTesla_NBT_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NBT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {fe 0c 16 00 fe 90 01 02 00 58 4a 97 29 90 01 03 11 a2 fe 90 01 02 00 fe 90 01 02 00 20 90 01 03 00 9c fe 90 01 02 00 20 90 01 03 00 90 00 } //5
		$a_01_1 = {41 6e 74 69 41 6e 61 6c 79 73 69 73 } //1 AntiAnalysis
		$a_01_2 = {6e 6f 6e 53 65 63 72 65 74 50 61 79 6c 6f 61 64 4c 65 6e 67 74 68 } //1 nonSecretPayloadLength
	condition:
		((#a_03_0  & 1)*5+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}
rule Trojan_BAT_AgentTesla_NBT_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NBT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {2b 62 00 08 09 11 04 28 90 01 03 06 13 07 d0 90 01 03 01 28 90 01 03 0a 72 90 01 03 70 90 01 03 00 70 90 01 03 00 70 90 01 03 00 0a 20 90 01 03 00 14 14 17 8d 90 01 03 01 25 16 11 07 8c 90 01 03 01 a2 28 90 01 03 0a a5 90 01 03 01 13 08 17 13 09 07 09 11 08 d2 6f 90 01 03 0a 00 00 11 04 17 58 13 04 11 04 17 fe 04 13 0a 11 0a 2d 93 06 17 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}