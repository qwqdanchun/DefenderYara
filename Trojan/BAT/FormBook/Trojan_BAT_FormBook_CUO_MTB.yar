
rule Trojan_BAT_FormBook_CUO_MTB{
	meta:
		description = "Trojan:BAT/FormBook.CUO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 07 00 00 0a 00 "
		
	strings :
		$a_03_0 = {13 04 09 11 04 20 e8 03 00 00 73 90 01 03 0a 0c 06 08 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 08 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 17 6f 90 01 03 0a 02 06 6f 90 01 03 0a 17 73 90 01 03 0a 0b 2b 90 00 } //0a 00 
		$a_03_1 = {0c 07 08 20 e8 03 00 00 73 90 01 03 0a 0d 06 09 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 09 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 17 6f 90 01 03 0a 02 06 6f 90 01 03 0a 17 90 00 } //0a 00 
		$a_03_2 = {13 04 09 11 04 20 e8 03 00 00 73 90 01 03 0a 0c 06 08 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 08 06 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 06 17 6f 90 01 03 0a 02 06 6f 90 01 03 0a 17 73 90 01 03 0a 0b 90 00 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00 
		$a_01_4 = {00 43 6c 61 73 73 4c 69 62 72 61 72 79 00 } //01 00 
		$a_01_5 = {47 65 74 4d 61 6e 69 66 65 73 74 52 65 73 6f 75 72 63 65 } //01 00 
		$a_01_6 = {47 65 74 45 78 65 63 75 74 69 6e 67 41 73 73 65 6d 62 6c 79 } //00 00 
	condition:
		any of ($a_*)
 
}