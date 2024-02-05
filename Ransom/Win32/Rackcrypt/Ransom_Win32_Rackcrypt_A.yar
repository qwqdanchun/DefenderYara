
rule Ransom_Win32_Rackcrypt_A{
	meta:
		description = "Ransom:Win32/Rackcrypt.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {57 00 65 00 20 00 61 00 72 00 65 00 20 00 73 00 6f 00 72 00 72 00 79 00 20 00 74 00 6f 00 20 00 74 00 65 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 2c 00 20 00 62 00 75 00 74 00 20 00 20 00 61 00 6c 00 6c 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 6f 00 6e 00 20 00 74 00 68 00 69 00 73 00 20 00 50 00 43 00 } //01 00 
		$a_01_1 = {61 00 6e 00 64 00 20 00 79 00 6f 00 75 00 20 00 63 00 61 00 6e 00 20 00 70 00 65 00 72 00 73 00 6f 00 6e 00 61 00 6c 00 79 00 20 00 76 00 65 00 72 00 69 00 66 00 79 00 20 00 74 00 68 00 69 00 73 00 20 00 62 00 79 00 20 00 70 00 72 00 65 00 73 00 73 00 69 00 6e 00 67 00 20 00 20 00 22 00 66 00 69 00 6c 00 65 00 73 00 22 00 } //01 00 
		$a_01_2 = {49 00 44 00 43 00 5f 00 53 00 54 00 41 00 54 00 49 00 43 00 5f 00 57 00 41 00 4c 00 4c 00 45 00 54 00 } //01 00 
		$a_01_3 = {55 00 73 00 65 00 20 00 22 00 63 00 6f 00 70 00 79 00 22 00 20 00 62 00 75 00 74 00 74 00 6f 00 6e 00 20 00 74 00 6f 00 20 00 63 00 6f 00 70 00 79 00 20 00 77 00 61 00 6c 00 6c 00 65 00 74 00 20 00 61 00 64 00 64 00 72 00 65 00 73 00 73 00 20 00 74 00 6f 00 20 00 63 00 6c 00 69 00 70 00 62 00 6f 00 61 00 72 00 64 00 2e 00 } //01 00 
		$a_01_4 = {49 00 6e 00 20 00 63 00 61 00 73 00 65 00 20 00 79 00 6f 00 75 00 20 00 6d 00 61 00 64 00 65 00 20 00 61 00 20 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 2c 00 20 00 62 00 75 00 74 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //01 00 
		$a_01_5 = {65 6e 63 72 79 70 74 65 64 20 75 73 69 6e 67 20 73 74 72 6f 6e 67 65 73 74 20 41 45 53 2d 32 35 36 20 65 6e 63 72 79 70 74 69 6f 6e 20 61 6c 67 6f 72 69 74 68 6d } //00 00 
		$a_01_6 = {00 80 10 00 } //00 54 
	condition:
		any of ($a_*)
 
}