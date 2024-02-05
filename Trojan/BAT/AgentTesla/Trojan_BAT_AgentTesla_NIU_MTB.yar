
rule Trojan_BAT_AgentTesla_NIU_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NIU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 50 4c 4f 4b 4e 4d 4a 49 55 48 42 56 47 59 54 46 43 58 44 52 45 53 5a 41 57 51 41 5a 41 44 46 47 46 54 46 47 59 43 54 59 59 54 52 44 45 58 47 59 55 56 55 49 47 48 48 55 49 00 } //01 00 
		$a_01_1 = {00 4f 49 55 54 45 52 53 57 42 41 4a 48 47 46 46 44 53 41 46 48 4b 4f 49 4d 4e 59 48 47 54 54 52 46 47 44 52 43 46 45 53 45 57 44 00 } //01 00 
		$a_01_2 = {00 50 65 72 66 6f 72 6d 54 61 62 6c 65 00 } //01 00 
		$a_01_3 = {00 47 65 74 54 79 70 65 } //01 00 
		$a_01_4 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //01 00 
		$a_01_5 = {00 50 6f 73 69 74 69 6f 6e 00 } //01 00 
		$a_01_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}