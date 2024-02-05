
rule Trojan_BAT_AgentTesla_GD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.GD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0d 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 33 32 36 34 35 61 33 38 2d 32 33 33 35 2d 34 30 36 61 2d 38 66 32 62 2d 61 38 62 32 66 36 30 63 36 36 39 33 } //14 00 
		$a_81_1 = {24 61 39 36 33 39 32 66 64 2d 39 32 38 37 2d 34 36 33 31 2d 61 30 65 35 2d 61 61 32 66 36 33 63 66 36 33 62 62 } //14 00 
		$a_81_2 = {24 38 33 31 65 66 32 66 35 2d 35 61 31 31 2d 34 33 39 63 2d 38 66 34 36 2d 66 39 35 34 32 61 62 30 63 32 38 66 } //14 00 
		$a_81_3 = {24 61 35 39 30 34 35 36 66 2d 34 61 30 64 2d 34 65 66 65 2d 38 63 36 63 2d 36 33 62 63 32 30 36 34 61 63 36 36 } //01 00 
		$a_81_4 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_5 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_8 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //01 00 
		$a_81_11 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_12 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}