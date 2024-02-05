
rule Trojan_BAT_AgentTesla_CIH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.CIH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {07 08 07 08 91 06 08 1f 10 5d 91 61 9c 08 17 d6 0c 08 } //01 00 
		$a_01_1 = {47 65 74 54 79 70 65 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00 
	condition:
		any of ($a_*)
 
}