
rule Trojan_BAT_ElysiumStealer_EJ_MTB{
	meta:
		description = "Trojan:BAT/ElysiumStealer.EJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1d 00 1d 00 0b 00 00 14 00 "
		
	strings :
		$a_81_0 = {64 66 67 68 64 66 67 67 64 66 67 64 66 } //14 00 
		$a_81_1 = {66 61 66 61 73 64 73 61 64 } //01 00 
		$a_81_2 = {64 64 64 64 64 64 61 73 } //01 00 
		$a_81_3 = {61 73 64 61 73 64 61 } //01 00 
		$a_81_4 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_5 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_81_6 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_81_7 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //01 00 
		$a_81_8 = {47 65 74 54 79 70 65 73 } //01 00 
		$a_81_9 = {43 6f 6e 76 65 72 74 } //01 00 
		$a_81_10 = {49 6e 76 6f 6b 65 } //00 00 
	condition:
		any of ($a_*)
 
}