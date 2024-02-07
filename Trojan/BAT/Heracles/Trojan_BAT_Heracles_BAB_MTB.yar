
rule Trojan_BAT_Heracles_BAB_MTB{
	meta:
		description = "Trojan:BAT/Heracles.BAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {24 40 32 d5 2a 06 2a 13 30 03 00 44 00 00 00 03 00 00 11 73 40 00 00 0a 0a 28 08 00 00 06 0b 07 16 07 8e 69 28 41 00 00 0a 07 28 } //02 00 
		$a_01_1 = {9a 13 04 06 11 04 6f 44 00 00 0a 09 17 58 0d 09 08 8e 69 32 e9 06 6f 45 00 00 0a 2a 7a 03 2c 13 02 7b 06 } //02 00 
		$a_03_2 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 41 00 70 00 70 00 90 02 04 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 90 00 } //01 00 
		$a_01_3 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_01_4 = {52 65 76 65 72 73 65 } //00 00  Reverse
	condition:
		any of ($a_*)
 
}