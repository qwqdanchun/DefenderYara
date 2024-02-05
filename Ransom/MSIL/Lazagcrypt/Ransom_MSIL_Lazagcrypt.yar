
rule Ransom_MSIL_Lazagcrypt{
	meta:
		description = "Ransom:MSIL/Lazagcrypt,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {57 00 65 00 20 00 68 00 61 00 76 00 65 00 20 00 72 00 65 00 63 00 65 00 69 00 76 00 65 00 64 00 20 00 79 00 6f 00 75 00 72 00 20 00 70 00 61 00 79 00 6d 00 65 00 6e 00 74 00 20 00 61 00 6e 00 64 00 20 00 77 00 69 00 6c 00 6c 00 20 00 6e 00 6f 00 77 00 20 00 70 00 72 00 6f 00 63 00 65 00 65 00 64 00 20 00 74 00 6f 00 20 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 20 00 79 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 2e 00 } //02 00 
		$a_01_1 = {49 00 66 00 20 00 79 00 6f 00 75 00 20 00 66 00 61 00 69 00 6c 00 20 00 74 00 6f 00 20 00 63 00 6f 00 6d 00 70 00 6c 00 79 00 20 00 77 00 69 00 74 00 68 00 69 00 6e 00 20 00 33 00 36 00 68 00 2c 00 20 00 74 00 68 00 65 00 20 00 72 00 61 00 6e 00 73 00 6f 00 6d 00 20 00 77 00 69 00 6c 00 6c 00 20 00 62 00 65 00 20 00 72 00 61 00 69 00 73 00 65 00 64 00 2e 00 20 00 59 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 77 00 61 00 72 00 6e 00 65 00 64 00 2e 00 } //02 00 
		$a_01_2 = {77 00 66 00 6d 00 6d 00 70 00 38 00 40 00 73 00 69 00 67 00 61 00 69 00 6e 00 74 00 2e 00 6f 00 72 00 67 00 } //02 00 
		$a_01_3 = {65 3a 5c 50 72 6f 6a 65 63 74 73 5c 62 72 63 5c 62 72 63 5c 6f 62 6a 5c 78 38 36 5c 52 65 6c 65 61 73 65 5c 62 72 63 2e 70 64 62 } //02 00 
		$a_01_4 = {62 00 72 00 63 00 2e 00 65 00 78 00 65 00 } //00 00 
		$a_00_5 = {5d 04 00 00 00 b0 } //03 80 
	condition:
		any of ($a_*)
 
}