
rule Trojan_BAT_AgentTesla_DNZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DNZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 62 35 30 64 33 66 63 39 2d 64 64 34 38 2d 34 38 65 64 2d 61 33 31 66 2d 64 31 37 61 33 39 33 34 34 30 32 38 } //01 00 
		$a_01_1 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_2 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00 
		$a_01_3 = {54 00 30 00 6f 00 30 00 57 00 69 00 30 00 6e 00 30 00 33 00 30 00 32 00 } //01 00 
		$a_01_4 = {47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 } //01 00 
		$a_01_5 = {47 65 74 50 69 78 65 6c } //01 00 
		$a_01_6 = {43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 } //01 00 
		$a_01_7 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}