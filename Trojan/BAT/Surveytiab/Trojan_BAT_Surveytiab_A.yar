
rule Trojan_BAT_Surveytiab_A{
	meta:
		description = "Trojan:BAT/Surveytiab.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {3a 00 2f 00 2f 00 67 00 6f 00 6f 00 2e 00 67 00 6c 00 2f 00 73 00 6a 00 4d 00 6e 00 39 00 42 00 } //04 00 
		$a_01_1 = {3a 00 2f 00 2f 00 67 00 6f 00 6f 00 2e 00 67 00 6c 00 2f 00 45 00 49 00 4e 00 66 00 51 00 6e 00 } //01 00 
		$a_01_2 = {67 00 61 00 6d 00 65 00 73 00 6f 00 66 00 70 00 63 00 2e 00 63 00 6f 00 6d 00 2f 00 68 00 6f 00 77 00 2d 00 74 00 6f 00 2d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2d 00 69 00 6e 00 64 00 69 00 76 00 69 00 64 00 75 00 61 00 6c 00 2d 00 6b 00 65 00 79 00 2f 00 } //01 00 
		$a_01_3 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 66 00 72 00 65 00 65 00 20 00 6c 00 69 00 63 00 65 00 6e 00 73 00 65 00 20 00 6b 00 65 00 79 00 20 00 6f 00 66 00 20 00 74 00 68 00 65 00 20 00 70 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00 
		$a_01_4 = {30 00 43 00 49 00 55 00 2d 00 53 00 57 00 47 00 36 00 33 00 2d 00 41 00 43 00 4d 00 4a 00 37 00 2d 00 46 00 46 00 46 00 33 00 35 00 2d 00 53 00 4c 00 4b 00 38 00 } //00 00 
	condition:
		any of ($a_*)
 
}