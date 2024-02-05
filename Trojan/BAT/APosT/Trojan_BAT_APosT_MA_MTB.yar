
rule Trojan_BAT_APosT_MA_MTB{
	meta:
		description = "Trojan:BAT/APosT.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 6a 77 66 64 61 69 64 77 61 } //01 00 
		$a_01_1 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_2 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_3 = {47 65 74 42 79 74 65 73 } //01 00 
		$a_01_4 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_5 = {6b 00 6a 00 67 00 73 00 64 00 6f 00 67 00 66 00 65 00 77 00 6f 00 66 00 } //00 00 
	condition:
		any of ($a_*)
 
}