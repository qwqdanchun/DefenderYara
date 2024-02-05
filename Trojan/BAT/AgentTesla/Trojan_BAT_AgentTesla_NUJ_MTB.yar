
rule Trojan_BAT_AgentTesla_NUJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NUJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 31 63 65 62 34 32 36 34 2d 36 33 33 35 2d 34 63 65 31 2d 38 65 62 37 2d 39 39 61 64 38 61 31 65 62 65 64 38 } //01 00 
		$a_01_1 = {62 6f 73 74 6f 6e 62 65 61 6e 63 61 66 65 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_4 = {47 65 74 54 79 70 65 73 } //01 00 
		$a_01_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}