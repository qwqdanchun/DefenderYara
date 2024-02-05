
rule Trojan_BAT_AgentTesla_NQR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NQR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {74 72 61 6e 73 66 65 72 2e 73 68 2f 67 65 74 2f 52 71 56 65 7a 77 2f } //01 00 
		$a_81_1 = {2f 63 20 70 69 6e 67 20 67 6f 6f 67 6c 65 2e 63 6f 6d 20 26 26 20 74 69 6d 65 6f 75 74 20 31 30 } //01 00 
		$a_81_2 = {49 64 69 77 70 63 74 6f 79 79 69 79 63 72 68 73 64 62 6e 6a } //01 00 
		$a_01_3 = {47 65 74 4d 65 74 68 6f 64 } //01 00 
		$a_01_4 = {44 79 6e 61 6d 69 63 49 6e 76 6f 6b 65 } //00 00 
	condition:
		any of ($a_*)
 
}