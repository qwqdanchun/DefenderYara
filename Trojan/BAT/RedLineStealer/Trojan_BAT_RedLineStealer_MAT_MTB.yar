
rule Trojan_BAT_RedLineStealer_MAT_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.MAT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 00 64 00 53 00 63 00 57 00 4a 00 43 00 5a 00 78 00 76 00 47 00 } //01 00 
		$a_01_1 = {30 35 61 33 62 39 39 32 2d 61 37 33 30 2d 34 31 37 37 2d 61 30 63 62 2d 66 37 30 33 34 34 35 33 35 36 31 35 } //01 00 
		$a_01_2 = {44 00 79 00 2a 00 7c 00 2f 00 6e 00 61 00 6d 00 2a 00 7c 00 2f 00 69 00 63 00 44 00 6c 00 2a 00 7c 00 2f 00 6c 00 49 00 6e 00 76 00 6f 00 2a 00 7c 00 2f 00 6b 00 65 00 } //01 00 
		$a_01_3 = {52 65 70 6c 61 63 65 } //01 00 
		$a_01_4 = {47 65 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_5 = {43 52 59 50 54 4f 41 50 49 5f 42 4c 4f 42 } //01 00 
		$a_01_6 = {47 65 74 42 79 74 65 73 } //01 00 
		$a_01_7 = {4b 69 6c 6c } //01 00 
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}