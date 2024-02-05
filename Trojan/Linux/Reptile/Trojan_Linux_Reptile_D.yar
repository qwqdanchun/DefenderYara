
rule Trojan_Linux_Reptile_D{
	meta:
		description = "Trojan:Linux/Reptile.D,SIGNATURE_TYPE_ELFHSTR_EXT,11 00 11 00 08 00 00 05 00 "
		
	strings :
		$a_03_0 = {1b 5b 30 31 c7 90 01 01 04 3b 33 32 6d c7 90 01 01 08 53 75 63 63 c7 90 01 01 0c 65 73 73 21 c7 90 01 01 10 1b 5b 30 30 c7 90 01 01 14 6d 0a 00 00 90 00 } //05 00 
		$a_03_1 = {1b 5b 30 30 c7 90 01 01 04 3b 33 31 6d c7 90 01 01 08 59 6f 75 20 c7 90 01 01 0c 68 61 76 65 c7 90 01 01 10 20 6e 6f 20 c7 90 01 01 14 70 6f 77 65 c7 90 01 01 18 72 20 68 65 c7 90 01 01 1c 72 65 21 20 c7 90 01 01 20 3a 28 20 1b c7 90 01 01 24 5b 30 30 6d c7 90 01 01 28 0a 0a 00 00 90 00 } //05 00 
		$a_03_2 = {1b 5b 30 31 c7 90 01 01 04 3b 33 36 6d c7 90 01 01 08 59 6f 75 20 c7 90 01 01 0c 67 6f 74 20 c7 90 01 01 10 73 75 70 65 c7 90 01 01 14 72 20 70 6f c7 90 01 01 18 77 65 72 73 c7 90 01 01 1c 21 1b 5b 30 c7 90 01 01 20 30 6d 0a 0a c7 90 01 01 24 00 00 00 00 90 00 } //05 00 
		$a_03_3 = {59 6f 75 20 c7 90 01 01 04 61 72 65 20 c7 90 01 01 08 61 6c 72 65 c7 90 01 01 0c 61 64 79 20 c7 90 01 01 10 72 6f 6f 74 c7 90 01 01 14 21 20 3a 29 c7 90 01 01 18 0a 0a 00 00 90 00 } //01 00 
		$a_01_4 = {5b 30 31 3b 33 36 6d 59 6f 75 20 67 6f 74 20 73 75 70 65 72 20 70 6f 77 65 72 73 21 } //01 00 
		$a_01_5 = {5b 30 30 3b 33 31 6d 59 6f 75 20 68 61 76 65 20 6e 6f 20 70 6f 77 65 72 20 68 65 72 65 21 } //01 00 
		$a_01_6 = {5b 30 31 3b 33 32 6d 53 75 63 63 65 73 73 21 } //01 00 
		$a_01_7 = {5b 30 31 3b 33 31 6d 46 61 69 6c 65 64 21 } //00 00 
	condition:
		any of ($a_*)
 
}