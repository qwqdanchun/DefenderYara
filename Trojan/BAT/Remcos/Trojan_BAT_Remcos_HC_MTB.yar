
rule Trojan_BAT_Remcos_HC_MTB{
	meta:
		description = "Trojan:BAT/Remcos.HC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 0f 00 00 14 00 "
		
	strings :
		$a_00_0 = {24 32 37 39 35 61 62 35 30 2d 63 64 66 33 2d 34 32 35 32 2d 38 65 34 37 2d 63 66 64 64 32 63 37 64 36 39 36 30 } //14 00 
		$a_00_1 = {24 64 37 33 36 63 37 31 61 2d 38 65 33 38 2d 34 66 38 30 2d 62 38 35 38 2d 32 34 33 35 32 34 32 66 62 32 39 37 } //14 00 
		$a_00_2 = {24 65 39 36 65 38 63 31 38 2d 37 37 65 33 2d 34 39 63 63 2d 38 66 37 36 2d 65 32 36 34 39 36 31 62 62 35 63 31 } //14 00 
		$a_00_3 = {24 30 36 62 62 37 66 65 32 2d 31 34 66 61 2d 34 35 64 35 2d 38 64 35 61 2d 65 66 34 62 66 34 35 62 32 38 31 34 } //14 00 
		$a_00_4 = {24 62 62 39 38 63 65 64 35 2d 31 39 34 64 2d 34 36 30 38 2d 61 65 34 30 2d 31 38 62 30 31 33 63 35 39 36 65 66 } //01 00 
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