
rule Ransom_Win64_Kanti_AK_MTB{
	meta:
		description = "Ransom:Win64/Kanti.AK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 54 54 45 4e 54 49 4f 4e 2c 20 54 41 4b 45 20 54 48 49 53 20 53 45 52 49 4f 55 53 4c 59 21 } //01 00 
		$a_01_1 = {41 6c 6c 20 79 6f 75 72 20 69 6d 70 6f 72 74 61 6e 74 20 66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 6c 6f 63 6b 65 64 } //01 00 
		$a_01_2 = {44 6f 20 6e 6f 74 20 6d 6f 64 69 66 79 2c 20 72 65 6e 61 6d 65 20 6f 72 20 64 65 6c 65 74 65 20 61 6e 79 20 66 69 6c 65 73 } //01 00 
		$a_01_3 = {44 6f 20 6e 6f 74 20 73 68 75 74 20 64 6f 77 6e 20 6f 72 20 72 65 73 74 61 72 74 20 79 6f 75 72 20 63 6f 6d 70 75 74 65 72 } //01 00 
		$a_01_4 = {44 6f 20 6e 6f 74 20 61 74 74 65 6d 70 74 20 74 6f 20 75 6e 6c 6f 63 6b 20 66 69 6c 65 73 20 75 73 69 6e 67 20 74 68 69 72 64 2d 70 61 72 74 79 20 73 6f 66 74 77 61 72 65 } //01 00 
		$a_01_5 = {59 6f 75 20 6e 65 65 64 20 74 6f 20 63 6f 6e 74 61 63 74 20 75 73 20 69 6d 6d 65 64 69 61 74 65 6c 79 20 74 6f 20 75 6e 6c 6f 63 6b 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 } //01 00 
		$a_01_6 = {49 66 20 79 6f 75 20 64 6f 20 6e 6f 74 20 63 6f 6e 74 61 63 74 20 75 73 20 69 6e 20 74 68 65 20 6e 65 78 74 20 66 65 77 20 64 61 79 73 2c 20 79 6f 75 20 77 69 6c 6c 20 6c 6f 73 65 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 } //01 00 
		$a_01_7 = {43 4f 4e 54 41 43 54 20 55 53 20 54 48 52 4f 55 47 48 20 45 4d 41 49 4c 3a 20 6b 61 6e 74 69 40 64 6e 6d 78 2e 63 6f 6d } //01 00 
		$a_01_8 = {43 6f 6f 70 65 72 61 74 69 6e 67 20 77 69 74 68 20 75 73 20 77 69 6c 6c 20 67 75 61 72 61 6e 74 65 65 20 74 68 61 74 20 61 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 77 69 6c 6c 20 62 65 20 72 65 63 6f 76 65 72 65 64 20 63 6f 6d 70 6c 65 74 65 6c 79 } //00 00 
	condition:
		any of ($a_*)
 
}