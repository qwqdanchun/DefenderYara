
rule Trojan_BAT_AgentTesla_LVH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LVH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 13 04 11 04 28 90 01 03 06 28 90 01 03 0a 13 05 07 11 05 28 90 01 03 0a 0b 00 09 17 d6 0d 09 08 6f 90 01 03 0a fe 04 13 06 11 06 2d cc 90 00 } //01 00 
		$a_03_1 = {02 6c 23 ff b9 f4 ee 2a 81 f7 3f 5b 28 90 01 03 0a b7 28 90 01 03 0a 28 90 01 03 0a 0b 07 0a 2b 00 06 2a 90 00 } //01 00 
		$a_01_2 = {42 00 75 00 6e 00 00 0b 69 00 66 00 75 00 5f 00 54 00 00 07 65 00 78 00 74 00 00 07 42 00 6f 00 78 } //01 00 
		$a_01_3 = {6d 00 2e 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 2e 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c } //00 00 
	condition:
		any of ($a_*)
 
}