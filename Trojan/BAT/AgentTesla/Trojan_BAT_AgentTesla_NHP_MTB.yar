
rule Trojan_BAT_AgentTesla_NHP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NHP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,4b 00 4b 00 0a 00 00 32 00 "
		
	strings :
		$a_01_0 = {24 61 35 34 63 61 61 36 65 2d 39 32 65 34 2d 34 30 65 64 2d 38 31 35 61 2d 33 32 30 37 34 31 30 39 32 33 36 65 } //32 00 
		$a_01_1 = {24 43 34 41 37 32 36 30 37 2d 46 45 46 36 2d 34 39 45 37 2d 42 32 36 37 2d 30 45 44 45 38 36 39 39 43 43 45 46 } //14 00 
		$a_01_2 = {46 72 65 73 68 46 6f 6f 64 45 78 70 72 65 73 73 2e 52 65 73 6f 75 72 63 65 73 } //14 00 
		$a_01_3 = {47 65 74 50 69 78 65 6c } //01 00 
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_5 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00 
		$a_01_6 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_7 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_9 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}