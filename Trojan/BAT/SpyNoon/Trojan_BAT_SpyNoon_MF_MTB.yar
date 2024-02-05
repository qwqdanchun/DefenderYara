
rule Trojan_BAT_SpyNoon_MF_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.MF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {11 0d 11 0d 11 03 94 11 0d 11 05 94 58 20 00 01 00 00 5d 94 13 06 38 e9 fe ff ff 11 04 17 58 13 04 38 38 fe ff ff } //01 00 
		$a_01_1 = {53 6f 72 74 4d 65 72 63 68 61 6e 74 } //01 00 
		$a_01_2 = {47 65 74 42 79 74 65 73 } //01 00 
		$a_01_3 = {50 61 74 63 68 4d 65 72 63 68 61 6e 74 } //01 00 
		$a_01_4 = {3a 00 2f 00 2f 00 6a 00 75 00 73 00 74 00 6e 00 6f 00 72 00 6d 00 61 00 6c 00 73 00 69 00 74 00 65 00 2e 00 64 00 64 00 6e 00 73 00 2e 00 6e 00 65 00 74 00 } //01 00 
		$a_01_5 = {6d 38 44 41 46 45 30 30 35 42 36 30 34 43 33 32 } //01 00 
		$a_01_6 = {6f 61 65 62 38 65 30 35 38 31 61 62 62 34 38 34 63 62 36 66 38 33 64 35 33 64 39 37 35 65 61 30 64 } //00 00 
	condition:
		any of ($a_*)
 
}