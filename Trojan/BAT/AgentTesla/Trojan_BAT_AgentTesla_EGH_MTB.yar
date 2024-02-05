
rule Trojan_BAT_AgentTesla_EGH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EGH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {08 07 1f 21 08 07 93 1f 0e 58 1f 5e 5d 58 28 90 01 03 0a 9d 90 00 } //01 00 
		$a_01_1 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //01 00 
		$a_01_2 = {00 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 } //01 00 
		$a_01_3 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}