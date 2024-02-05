
rule Trojan_BAT_AgentTesla_NLL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NLL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 00 56 00 71 00 51 00 4a 06 4a 06 4d 00 4a 06 4a 06 4a 06 4a 06 45 00 4a 06 4a 06 4a 06 4a 06 2f 00 2f 00 38 00 4a 06 4a 06 4c 00 67 00 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 51 00 4a } //01 00 
		$a_01_1 = {4a 06 4a 06 4a 06 6f 00 54 00 42 00 42 00 45 00 45 00 4b 00 67 00 49 00 47 00 49 00 46 00 31 00 42 00 77 00 4a 06 78 00 68 00 42 00 31 00 68 00 68 00 43 } //01 00 
		$a_01_2 = {4b 00 46 00 76 00 34 00 44 00 45 00 77 00 59 00 52 00 42 00 69 00 77 00 4a 00 42 00 68 00 38 00 74 00 62 00 79 00 67 00 4a 06 } //01 00 
		$a_01_3 = {42 00 57 00 67 00 4b 00 45 00 51 00 2f 00 4a 06 56 00 57 00 67 00 4b 00 77 00 51 00 2f 00 4a 06 56 00 57 00 67 00 4c 00 67 00 51 00 2f 00 4a 06 56 00 57 } //01 00 
		$a_01_4 = {77 00 67 00 49 00 43 00 4a 06 67 00 49 00 43 00 4a 06 67 00 45 00 42 00 77 00 49 00 49 00 43 00 4a 06 63 00 67 00 4a 06 77 00 67 00 64 00 42 00 51 } //01 00 
		$a_01_5 = {4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 4a 06 73 00 4a 06 4a 06 4a 06 44 00 4a 06 4a 06 4a 06 4a 06 } //01 00 
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00 
		$a_01_7 = {52 65 70 6c 61 63 65 } //00 00 
	condition:
		any of ($a_*)
 
}