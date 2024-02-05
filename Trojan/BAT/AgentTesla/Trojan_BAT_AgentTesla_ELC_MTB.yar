
rule Trojan_BAT_AgentTesla_ELC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ELC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 49 44 65 66 65 72 72 65 64 00 } //01 00 
		$a_01_1 = {00 43 6c 65 61 6e 75 70 00 57 6f 72 6b 4c 69 73 74 00 } //01 00 
		$a_01_2 = {00 46 72 6f 6d 42 61 73 65 36 34 43 68 61 72 41 72 72 61 79 00 } //01 00 
		$a_01_3 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //01 00 
		$a_01_4 = {00 54 6f 43 68 61 72 41 72 72 61 79 00 } //01 00 
		$a_01_5 = {00 59 66 00 59 67 00 59 68 00 59 69 00 } //01 00 
		$a_01_6 = {00 4d 65 73 73 61 67 65 44 61 74 61 00 54 77 6f 44 69 67 69 74 59 65 61 72 4d 61 78 00 } //01 00 
		$a_01_7 = {00 52 65 70 6c 61 63 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}