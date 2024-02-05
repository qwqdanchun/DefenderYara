
rule Trojan_BAT_AgentTesla_NFB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NFB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 04 06 07 28 90 01 01 00 00 06 26 11 04 06 07 6f 90 01 01 00 00 0a 13 05 11 05 28 90 01 01 00 00 0a 13 06 09 08 11 06 d2 9c 07 17 58 0b 07 17 fe 04 13 07 11 07 2d ce 08 17 58 0c 90 00 } //01 00 
		$a_01_1 = {47 65 74 42 79 74 65 73 } //01 00 
		$a_01_2 = {47 65 74 50 69 78 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}