
rule Trojan_BAT_AgentTesla_DWL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DWL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 08 00 00 0a 00 "
		
	strings :
		$a_81_0 = {24 66 30 31 61 32 34 39 38 2d 65 37 37 36 2d 34 65 37 62 2d 38 66 65 64 2d 30 66 66 39 64 66 35 61 31 62 63 36 } //01 00 
		$a_01_1 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //01 00 
		$a_01_2 = {00 54 6f 57 69 6e 33 32 00 } //01 00 
		$a_01_3 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //01 00 
		$a_01_4 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //01 00 
		$a_01_5 = {00 47 65 74 50 69 78 65 6c 00 } //01 00 
		$a_01_6 = {00 47 65 74 4d 65 74 68 6f 64 00 } //01 00 
		$a_01_7 = {00 49 6e 76 6f 6b 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}