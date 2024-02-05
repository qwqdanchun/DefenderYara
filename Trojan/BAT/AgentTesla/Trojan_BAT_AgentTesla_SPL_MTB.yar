
rule Trojan_BAT_AgentTesla_SPL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.SPL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {6d 5f 4d 79 57 65 62 53 65 72 76 69 63 65 73 4f 62 6a 65 63 74 50 72 6f 76 69 64 65 72 } //01 00 
		$a_81_1 = {6d 5f 55 73 65 72 4f 62 6a 65 63 74 50 72 6f 76 69 64 65 72 } //01 00 
		$a_01_2 = {73 00 79 00 73 00 74 00 65 00 6d 00 36 00 34 00 78 00 2e 00 65 00 78 00 65 00 7c 00 54 00 72 00 75 00 65 00 7c 00 46 00 61 00 6c 00 73 00 65 00 7c 00 46 00 61 00 6c 00 73 00 65 00 7c 00 25 00 54 00 65 00 6d 00 70 00 25 00 7c 00 46 00 61 00 6c 00 73 00 65 00 7c 00 46 00 61 00 6c 00 73 00 65 00 } //01 00 
		$a_01_3 = {78 00 44 00 53 00 20 00 31 00 38 00 37 00 37 00 6c 00 61 00 73 00 74 00 20 00 6f 00 6c 00 64 00 2e 00 65 00 78 00 65 00 7c 00 54 00 72 00 75 00 65 00 7c 00 46 00 61 00 6c 00 73 00 65 00 7c 00 46 00 61 00 6c 00 73 00 65 00 7c 00 25 00 54 00 65 00 6d 00 70 00 25 00 7c 00 46 00 61 00 6c 00 73 00 65 00 7c 00 46 00 61 00 6c 00 73 00 65 00 } //01 00 
		$a_01_4 = {52 00 75 00 48 00 72 00 7a 00 7a 00 37 00 52 00 4b 00 79 00 32 00 62 00 52 00 59 00 52 00 77 00 74 00 } //01 00 
		$a_01_5 = {66 00 6b 00 61 00 76 00 79 00 70 00 71 00 78 00 6c 00 61 00 6d 00 72 00 6c 00 6a 00 } //00 00 
	condition:
		any of ($a_*)
 
}