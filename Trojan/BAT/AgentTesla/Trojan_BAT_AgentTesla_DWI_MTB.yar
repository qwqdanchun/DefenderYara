
rule Trojan_BAT_AgentTesla_DWI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DWI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 33 00 } //01 00 
		$a_01_1 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 35 00 } //01 00 
		$a_01_2 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 34 00 } //01 00 
		$a_01_3 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 36 00 } //01 00 
		$a_01_4 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 32 00 } //01 00 
		$a_01_5 = {00 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 00 } //01 00 
		$a_81_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_7 = {69 00 66 00 75 00 5f 00 54 00 65 00 } //01 00 
		$a_01_8 = {00 47 65 74 54 79 70 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}