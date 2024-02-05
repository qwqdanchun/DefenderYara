
rule Trojan_BAT_AgentTesla_DK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2b 00 11 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 65 36 34 30 30 33 65 62 2d 61 33 30 32 2d 34 38 38 38 2d 61 38 61 35 2d 35 30 38 33 38 36 34 33 62 66 63 35 } //14 00 
		$a_81_1 = {24 34 35 38 30 32 32 34 32 2d 38 31 62 34 2d 34 32 61 35 2d 61 30 61 30 2d 30 31 37 62 66 37 61 66 32 36 64 66 } //14 00 
		$a_81_2 = {24 31 65 62 61 39 33 39 62 2d 63 34 36 63 2d 34 61 33 38 2d 61 37 63 34 2d 32 33 32 30 34 64 36 36 39 38 66 62 } //14 00 
		$a_81_3 = {24 30 66 33 32 63 64 64 36 2d 61 33 32 34 2d 34 30 63 34 2d 62 65 37 30 2d 31 64 32 34 38 35 63 62 37 31 64 36 } //0a 00 
		$a_81_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //0a 00 
		$a_81_5 = {41 63 74 69 76 61 74 6f 72 } //01 00 
		$a_81_6 = {6d 69 63 6b 65 79 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_7 = {56 69 73 6f 72 56 69 65 77 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_8 = {52 65 67 69 73 74 65 72 56 42 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_9 = {57 69 6c 6c 69 61 6d 5f 47 6f 6c 64 69 6e 67 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_10 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_11 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_12 = {44 65 62 75 67 67 65 72 53 74 65 70 54 68 72 6f 75 67 68 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_13 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_14 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_15 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_16 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}