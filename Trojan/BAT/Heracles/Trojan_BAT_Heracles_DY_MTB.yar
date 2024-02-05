
rule Trojan_BAT_Heracles_DY_MTB{
	meta:
		description = "Trojan:BAT/Heracles.DY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_81_0 = {61 66 73 67 67 73 64 66 73 64 66 73 64 66 73 64 66 64 } //01 00 
		$a_81_1 = {62 76 73 64 76 64 73 73 64 } //01 00 
		$a_01_2 = {68 00 66 00 67 00 68 00 67 00 67 00 66 00 67 00 64 00 } //01 00 
		$a_01_3 = {5f 00 49 00 43 00 4f 00 4e 00 5f 00 31 00 39 00 31 00 35 00 } //01 00 
		$a_81_4 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_5 = {5f 00 45 00 4e 00 41 00 42 00 4c 00 45 00 5f 00 50 00 52 00 4f 00 46 00 49 00 4c 00 49 00 4e 00 47 00 } //01 00 
		$a_81_6 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_7 = {42 6c 6f 63 6b 43 6f 70 79 } //00 00 
	condition:
		any of ($a_*)
 
}