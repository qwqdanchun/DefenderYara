
rule Trojan_BAT_AgentTesla_EPU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EPU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 45 33 38 36 38 45 46 41 2d 38 31 36 43 2d 34 32 43 41 2d 38 35 31 43 2d 33 41 38 30 37 41 31 42 35 34 37 46 } //01 00 
		$a_01_1 = {00 54 6f 55 49 6e 74 33 32 00 } //01 00 
		$a_01_2 = {00 53 75 62 73 74 72 69 6e 67 00 } //01 00 
		$a_01_3 = {00 47 65 74 4d 65 74 68 6f 64 73 00 } //01 00 
		$a_01_4 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_5 = {00 54 6f 41 72 67 62 00 } //01 00 
		$a_01_6 = {00 54 6f 49 6e 74 33 32 00 } //01 00 
		$a_01_7 = {00 47 65 74 54 79 70 65 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}