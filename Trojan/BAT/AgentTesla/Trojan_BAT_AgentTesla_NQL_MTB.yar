
rule Trojan_BAT_AgentTesla_NQL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NQL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 15 a2 09 09 01 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 2c 00 00 00 06 00 00 00 05 00 00 00 0f 00 00 00 03 00 00 00 32 00 00 00 16 00 00 00 08 00 00 00 02 00 00 00 03 00 00 00 04 } //01 00 
		$a_01_1 = {69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 39 00 } //01 00 
		$a_01_2 = {43 6e 73 74 72 75 63 74 6f 72 } //01 00 
		$a_01_3 = {56 69 72 74 75 61 6c 69 7a 61 74 69 6f 6e } //01 00 
		$a_01_4 = {49 73 4e 75 6c 6c 4f 72 57 68 69 74 65 53 70 61 63 65 } //01 00 
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //00 00 
	condition:
		any of ($a_*)
 
}