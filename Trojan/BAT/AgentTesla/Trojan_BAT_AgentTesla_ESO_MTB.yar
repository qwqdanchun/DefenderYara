
rule Trojan_BAT_AgentTesla_ESO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ESO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 45 44 42 34 34 33 35 31 2d 43 37 36 46 2d 34 45 36 31 2d 41 39 31 43 2d 33 31 34 43 46 30 42 34 39 45 35 } //01 00 
		$a_81_1 = {53 75 62 73 74 72 69 6e 67 } //01 00 
		$a_01_2 = {00 47 65 74 4d 65 74 68 6f 64 73 00 } //01 00 
		$a_01_3 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_4 = {00 54 6f 41 72 67 62 00 } //01 00 
		$a_01_5 = {00 54 6f 49 6e 74 33 32 00 } //01 00 
		$a_01_6 = {00 47 65 74 54 79 70 65 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}