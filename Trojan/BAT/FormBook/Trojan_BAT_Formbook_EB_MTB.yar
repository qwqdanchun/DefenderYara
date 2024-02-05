
rule Trojan_BAT_Formbook_EB_MTB{
	meta:
		description = "Trojan:BAT/Formbook.EB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {24 30 46 45 42 32 44 36 34 2d 45 46 35 46 2d 34 46 45 30 2d 42 31 38 41 2d 38 37 31 34 30 42 43 32 30 36 31 44 } //14 00 
		$a_81_1 = {24 61 61 33 39 61 33 64 34 2d 37 61 39 63 2d 34 33 38 36 2d 39 38 38 61 2d 32 30 66 39 38 33 38 38 64 64 31 33 } //14 00 
		$a_81_2 = {24 33 30 62 37 39 64 36 33 2d 65 64 61 66 2d 34 65 63 61 2d 61 37 64 63 2d 37 61 66 39 39 38 62 65 32 37 32 37 } //01 00 
		$a_81_3 = {46 6f 78 47 61 6d 65 4f 66 4c 69 66 65 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_4 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_5 = {52 65 73 74 61 75 72 61 6e 74 4d 61 6e 61 67 65 6d 65 6e 74 53 79 73 74 65 6d 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {4b 54 56 4d 61 6e 61 67 65 6d 65 6e 74 2e 4d 79 2e 52 65 73 6f 75 72 63 65 73 } //01 00 
		$a_81_8 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 53 74 61 74 65 } //01 00 
		$a_81_9 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_81_10 = {44 65 62 75 67 67 65 72 42 72 6f 77 73 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}