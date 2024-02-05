
rule Trojan_BAT_AgentTesla_MBBN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBBN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 44 00 2b 00 35 00 41 00 2b 00 39 00 7d 00 40 00 2b 00 7d 00 33 00 40 00 40 00 40 00 2b 00 7d 00 34 00 40 00 40 00 40 00 2b 00 46 00 46 00 2b 00 46 00 46 00 40 00 40 00 2b 00 42 00 38 00 40 00 40 00 40 00 40 00 40 00 40 00 40 00 2b 00 34 00 7d 00 40 00 40 00 } //01 00 
		$a_01_1 = {39 00 40 00 40 00 2b 00 7d 00 36 00 2b 00 7d 00 41 00 2b 00 31 00 38 00 2b 00 37 00 32 00 2b 00 7d 00 31 00 40 00 40 00 2b 00 37 00 7d 00 2b 00 31 00 36 00 2b 00 37 00 33 00 2b 00 31 00 } //01 00 
		$a_81_2 = {49 6e 76 6f 6b 65 } //01 00 
		$a_81_3 = {54 6f 41 72 72 61 79 } //01 00 
		$a_81_4 = {47 65 74 54 79 70 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}