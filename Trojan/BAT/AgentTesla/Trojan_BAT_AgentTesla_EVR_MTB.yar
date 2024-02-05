
rule Trojan_BAT_AgentTesla_EVR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EVR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 44 69 63 74 69 6f 6e 61 72 79 45 6e 75 6d 65 72 61 74 6f 72 00 } //01 00 
		$a_01_1 = {00 53 74 72 69 6e 67 54 79 70 65 49 6e 66 6f 00 } //01 00 
		$a_01_2 = {00 49 6e 70 75 74 42 6c 6f 63 6b 53 69 7a 65 00 } //01 00 
		$a_01_3 = {00 45 73 63 61 70 65 64 49 52 65 6d 6f 74 69 6e 67 46 6f 72 6d 61 74 74 65 72 00 } //01 00 
		$a_01_4 = {00 42 69 6e 61 72 79 43 6f 6d 70 61 74 69 62 69 6c 69 74 79 00 } //01 00 
		$a_01_5 = {00 4f 70 63 6f 64 65 00 } //01 00 
		$a_01_6 = {00 53 65 61 72 63 68 52 65 73 75 6c 74 00 } //01 00 
		$a_01_7 = {00 44 61 74 61 4d 69 73 61 6c 69 67 6e 65 64 00 } //01 00 
		$a_01_8 = {00 44 69 72 65 63 74 6f 72 79 49 6e 66 6f 00 } //01 00 
		$a_01_9 = {00 45 6e 75 6d 43 61 74 65 67 6f 72 69 65 73 46 6c 61 67 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}