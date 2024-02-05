
rule Trojan_BAT_Bladabindi_ME_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ME!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {13 05 11 05 72 90 01 03 70 28 90 01 03 0a 28 90 01 03 0a 13 05 11 05 72 90 01 03 70 28 90 01 03 0a 28 90 01 03 0a 13 05 11 05 72 90 01 03 70 28 90 01 03 0a 28 90 01 03 0a 13 05 11 05 28 90 01 03 0a 13 06 28 90 01 03 0a 11 06 6f 90 01 03 0a 13 07 72 90 01 03 70 13 08 11 08 72 90 01 03 70 28 90 01 03 0a 13 08 11 08 28 90 01 03 0a 13 09 28 90 01 03 0a 11 09 6f 90 01 03 0a 13 0a 7e 90 01 03 0a 26 11 04 28 90 01 03 0a 13 0b 28 90 01 03 0a 11 0b 6f 90 01 03 0a 13 0c 09 28 90 01 03 0a 13 0d 28 90 01 03 0a 11 0d 6f 90 01 03 0a 13 0e 73 90 01 03 0a 11 0e 28 90 01 03 0a 13 0f 06 11 0c 90 00 } //01 00 
		$a_01_1 = {47 65 74 55 73 65 72 49 6e 70 75 74 } //01 00 
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 } //01 00 
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00 
		$a_01_5 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}