
rule Trojan_BAT_AgentTesla_DSD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DSD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {16 0c 2b 22 11 06 07 08 28 90 01 03 06 13 07 11 07 28 90 01 03 0a 13 08 11 04 11 08 d2 6f 90 01 03 0a 08 17 58 0c 08 17 fe 04 13 09 11 09 2d d4 09 17 58 0d 07 17 58 0b 90 00 } //0a 00 
		$a_03_1 = {16 13 06 2b 28 00 11 04 11 05 11 06 28 90 01 03 06 13 09 11 09 28 90 01 03 0a 13 0a 09 11 0a d2 6f 90 01 03 0a 00 00 11 06 17 58 13 06 11 06 17 fe 04 13 0b 11 0b 2d cd 08 17 58 0c 00 11 05 17 58 13 05 90 00 } //01 00 
		$a_01_2 = {54 6f 57 69 6e 33 32 } //01 00 
		$a_01_3 = {47 65 74 50 69 78 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}