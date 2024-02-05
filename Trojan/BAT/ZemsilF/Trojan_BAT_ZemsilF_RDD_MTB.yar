
rule Trojan_BAT_ZemsilF_RDD_MTB{
	meta:
		description = "Trojan:BAT/ZemsilF.RDD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 47 58 2e 65 78 65 } //01 00 
		$a_01_1 = {57 65 64 6c 79 } //01 00 
		$a_01_2 = {4c 75 50 47 59 43 48 32 52 38 39 4b 30 4d 51 35 36 62 30 } //01 00 
		$a_01_3 = {53 6b 5a 46 36 51 4f 6d 76 4f 69 41 74 30 4a 50 54 47 2e 6e 49 62 42 47 51 4e 35 44 4b 58 71 32 67 56 37 70 75 } //01 00 
		$a_01_4 = {77 52 74 6b 71 43 34 30 4c 57 32 32 5a 52 5a 47 6d 32 2e 42 6d 4e 36 71 39 79 50 36 53 78 58 53 66 36 75 4d 55 } //00 00 
	condition:
		any of ($a_*)
 
}