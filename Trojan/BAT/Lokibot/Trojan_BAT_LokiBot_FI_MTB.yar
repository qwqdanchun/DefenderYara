
rule Trojan_BAT_LokiBot_FI_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.FI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 37 43 31 38 41 37 42 33 2d 41 36 44 37 2d 34 34 41 35 2d 42 44 34 33 2d 43 38 39 32 46 37 32 46 42 32 30 34 } //0a 00 
		$a_01_1 = {24 65 33 31 36 62 31 32 36 2d 63 37 38 33 2d 34 30 36 30 2d 39 35 62 39 2d 61 61 38 65 65 32 65 36 37 36 64 37 } //01 00 
		$a_01_2 = {5f 00 31 00 30 00 5f 00 68 00 69 00 73 00 74 00 6f 00 72 00 69 00 63 00 61 00 6c 00 5f 00 6d 00 69 00 73 00 74 00 61 00 6b 00 65 00 73 00 5f 00 69 00 6e 00 5f 00 74 00 68 00 65 00 5f 00 6d 00 6f 00 76 00 69 00 65 00 5f 00 33 00 30 00 30 00 } //01 00 
		$a_01_3 = {32 00 47 00 48 00 46 00 38 00 4b 00 45 00 34 00 37 00 37 00 35 00 35 00 38 00 45 00 34 00 38 00 35 00 42 00 48 00 48 00 45 00 45 00 } //01 00 
		$a_01_4 = {45 00 78 00 61 00 6d 00 70 00 6c 00 65 00 46 00 75 00 6c 00 6c 00 } //01 00 
		$a_01_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_6 = {41 63 74 69 76 61 74 6f 72 } //01 00 
		$a_01_7 = {47 65 74 54 79 70 65 } //00 00 
	condition:
		any of ($a_*)
 
}