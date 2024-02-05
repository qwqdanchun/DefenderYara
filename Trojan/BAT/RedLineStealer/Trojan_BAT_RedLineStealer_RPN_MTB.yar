
rule Trojan_BAT_RedLineStealer_RPN_MTB{
	meta:
		description = "Trojan:BAT/RedLineStealer.RPN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 43 00 72 00 4c 00 50 00 57 00 53 00 74 00 72 00 79 00 70 00 74 00 4f 00 70 00 65 00 4c 00 50 00 57 00 53 00 74 00 72 00 6e 00 41 00 6c 00 67 00 6f 00 72 00 69 00 74 00 68 00 6d 00 50 00 72 00 6f 00 76 00 69 00 4c 00 50 00 57 00 53 00 74 00 72 00 64 00 65 00 72 00 } //01 00 
		$a_01_1 = {42 00 43 00 73 00 74 00 72 00 69 00 6e 00 67 00 2e 00 45 00 6d 00 70 00 74 00 79 00 72 00 79 00 70 00 74 00 53 00 73 00 74 00 72 00 69 00 6e 00 67 00 2e 00 45 00 6d 00 70 00 74 00 79 00 65 00 74 00 50 00 72 00 73 00 74 00 72 00 69 00 6e 00 67 00 2e 00 45 00 6d 00 70 00 74 00 79 00 6f 00 70 00 65 00 72 00 73 00 74 00 72 00 69 00 6e 00 67 00 2e 00 45 00 6d 00 70 00 74 00 79 00 74 00 79 00 } //01 00 
		$a_01_2 = {41 00 72 00 6d 00 65 00 6e 00 69 00 61 00 } //01 00 
		$a_01_3 = {4b 00 79 00 72 00 67 00 79 00 7a 00 73 00 74 00 61 00 6e 00 } //01 00 
		$a_01_4 = {61 00 70 00 69 00 2e 00 69 00 70 00 2e 00 73 00 62 00 } //01 00 
		$a_01_5 = {50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5f 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 5f 00 76 00 61 00 6c 00 75 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}