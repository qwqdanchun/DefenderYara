
rule Trojan_BAT_AgentTesla_HO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.HO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 0f 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 35 63 61 34 31 39 34 65 2d 66 35 31 62 2d 34 66 30 37 2d 61 64 65 38 2d 33 35 31 65 35 61 34 30 30 61 61 62 } //14 00 
		$a_00_1 = {24 63 64 31 38 30 65 66 37 2d 63 66 65 64 2d 34 31 30 63 2d 61 32 39 63 2d 63 35 31 63 39 33 36 36 38 34 31 36 } //14 00 
		$a_00_2 = {24 35 39 31 31 38 38 62 38 2d 35 66 32 32 2d 34 63 33 62 2d 38 37 30 65 2d 38 39 33 66 33 32 61 36 39 62 39 36 } //14 00 
		$a_00_3 = {24 31 32 65 39 34 65 34 64 2d 32 38 66 66 2d 34 33 30 39 2d 62 32 65 35 2d 61 32 32 61 66 64 32 66 36 36 38 38 } //14 00 
		$a_00_4 = {24 64 63 65 34 30 65 33 64 2d 65 62 33 38 2d 34 63 65 36 2d 38 37 32 31 2d 38 33 35 33 61 65 66 64 65 63 62 66 } //01 00 
		$a_81_5 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_9 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_10 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_11 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00 
		$a_81_12 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_13 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_14 = {41 63 74 69 76 61 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}