
rule Trojan_BAT_AgentTesla_NEAS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NEAS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {47 6f 6c 64 65 6e 27 73 20 44 69 73 74 72 69 62 75 74 6f 72 73 20 32 30 32 31 } //05 00 
		$a_01_1 = {67 65 74 5f 5f 31 35 31 5f 37 30 35 5f 30 33 33 5f 31 30 32 } //02 00 
		$a_01_2 = {6e 75 6d 65 72 6f 44 65 43 6c 69 65 6e 74 } //02 00 
		$a_01_3 = {53 61 75 76 65 67 61 72 64 65 72 46 69 63 68 69 65 72 } //02 00 
		$a_01_4 = {53 47 41 2e 46 6f 72 6d 31 2e 72 65 73 6f 75 72 63 65 73 } //02 00 
		$a_01_5 = {55 51 47 2e 64 } //00 00 
	condition:
		any of ($a_*)
 
}