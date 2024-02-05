
rule Trojan_BAT_AgentTesla_LTN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LTN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 05 2b 29 00 09 11 04 11 05 28 90 01 03 06 13 09 11 09 28 90 01 03 0a 13 0a 08 11 04 11 0a d2 6f 90 01 03 0a 00 00 11 05 17 58 13 05 11 05 17 fe 04 13 0b 11 0b 2d cc 90 00 } //01 00 
		$a_81_1 = {47 65 74 50 69 78 65 6c } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_LTN_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.LTN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 63 32 38 30 38 63 63 62 2d 35 61 65 38 2d 34 38 65 38 2d 61 64 64 36 2d 31 35 37 30 66 33 35 33 61 39 64 30 } //01 00 
		$a_01_1 = {00 47 65 74 54 79 70 65 73 00 } //01 00 
		$a_01_2 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_3 = {00 54 6f 57 69 6e 33 32 00 } //01 00 
		$a_01_4 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_5 = {00 44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}