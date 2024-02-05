
rule Trojan_BAT_AgentTesla_EUN_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EUN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 31 31 32 63 66 36 65 31 2d 38 31 34 65 2d 34 33 34 34 2d 61 31 38 33 2d 61 64 61 37 37 65 62 35 38 32 62 65 } //01 00 
		$a_01_1 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //01 00 
		$a_01_2 = {00 47 65 74 54 79 70 65 00 } //01 00 
		$a_01_3 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //01 00 
		$a_01_4 = {00 49 6e 76 6f 6b 65 4d 65 6d 62 65 72 00 } //01 00 
		$a_01_5 = {00 52 65 73 6f 75 72 63 65 4d 61 6e 61 67 65 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}