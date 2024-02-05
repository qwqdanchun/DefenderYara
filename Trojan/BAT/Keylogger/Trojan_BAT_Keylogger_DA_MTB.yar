
rule Trojan_BAT_Keylogger_DA_MTB{
	meta:
		description = "Trojan:BAT/Keylogger.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,20 00 20 00 0d 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 37 34 62 36 64 32 35 2d 31 39 62 31 2d 34 30 34 39 2d 62 65 64 62 2d 33 33 66 64 32 38 36 37 62 37 62 64 } //14 00 
		$a_81_1 = {24 38 38 37 37 31 61 30 37 2d 37 64 65 32 2d 34 63 62 38 2d 62 31 66 39 2d 37 33 33 38 66 33 33 34 37 62 62 62 } //14 00 
		$a_81_2 = {24 39 34 64 62 30 35 39 37 2d 65 30 35 34 2d 34 32 63 35 2d 39 62 63 37 2d 30 65 61 65 64 37 63 39 31 34 39 63 } //05 00 
		$a_81_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //05 00 
		$a_81_4 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00 
		$a_81_5 = {64 54 7a 6b 65 68 78 48 58 54 76 5a 78 4d 4f 47 6d 62 41 50 4d 69 58 64 74 54 73 72 2e 72 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_6 = {53 61 72 61 77 61 72 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_7 = {43 2e 50 72 69 76 61 74 65 53 74 75 62 57 69 6e 46 6f 72 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_10 = {41 63 74 69 76 61 74 6f 72 } //01 00 
		$a_81_11 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_81_12 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}