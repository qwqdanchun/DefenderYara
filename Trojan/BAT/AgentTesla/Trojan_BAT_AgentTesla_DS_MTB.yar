
rule Trojan_BAT_AgentTesla_DS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {2b 51 00 02 6f 90 01 03 06 72 90 01 03 70 02 7b 90 01 03 04 72 90 01 03 70 6f 90 01 03 0a 28 90 01 03 0a 18 28 90 01 03 0a 28 90 01 03 0a 90 00 } //2
		$a_03_1 = {0b 02 03 72 90 01 03 70 28 90 01 03 06 0c 08 0d 16 13 04 38 b2 00 00 00 09 11 04 9a 13 05 11 05 28 90 01 03 0a 90 00 } //2
		$a_03_2 = {13 04 11 04 14 17 8d 90 01 03 01 25 16 19 8d 90 01 03 01 25 16 7e 90 01 03 04 a2 25 17 7e 90 01 03 04 a2 25 18 72 90 01 03 70 a2 a2 6f 90 01 03 0a 26 20 00 08 00 00 0a 2b 00 06 2a 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1) >=3
 
}