
rule Trojan_BAT_AgentTesla_ASCM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASCM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {11 07 17 58 13 07 11 07 20 00 01 00 00 5d 13 07 11 05 08 11 07 94 58 13 05 11 05 20 00 01 00 00 5d 13 05 08 11 07 94 13 06 08 11 07 08 11 05 94 9e 08 11 05 11 06 9e 08 08 11 07 94 08 11 05 94 58 20 00 01 00 00 5d 94 13 08 09 11 04 02 11 04 91 11 08 61 d2 9c 11 04 17 58 13 04 11 04 02 8e 69 32 9d } //1
		$a_03_1 = {20 e8 03 00 00 5a 28 ?? 00 00 0a 7e ?? 00 00 04 08 28 ?? 00 00 06 0b 06 17 58 0a 07 17 8d ?? 00 00 01 25 16 1f 20 9d 6f ?? 00 00 0a 0d 7e } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}