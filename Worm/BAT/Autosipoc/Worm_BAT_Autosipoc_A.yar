
rule Worm_BAT_Autosipoc_A{
	meta:
		description = "Worm:BAT/Autosipoc.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 63 70 6f 72 74 5c 61 75 74 6f 63 6f 70 69 73 20 2d 20 43 6f 70 79 } //01 00 
		$a_01_1 = {74 00 65 00 72 00 73 00 65 00 72 00 61 00 73 00 20 00 63 00 61 00 72 00 70 00 65 00 74 00 61 00 73 00 } //01 00 
		$a_01_2 = {24 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 2e 00 42 00 49 00 4e 00 } //01 00 
		$a_01_3 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 41 00 72 00 65 00 73 00 } //01 00 
		$a_01_4 = {46 00 6f 00 6c 00 64 00 65 00 72 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}