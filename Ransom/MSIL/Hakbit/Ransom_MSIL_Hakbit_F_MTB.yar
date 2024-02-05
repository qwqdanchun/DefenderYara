
rule Ransom_MSIL_Hakbit_F_MTB{
	meta:
		description = "Ransom:MSIL/Hakbit.F!MTB,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 54 00 50 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_1 = {3c 4b 69 6c 6c 70 72 6f 63 3e } //01 00 
		$a_01_2 = {55 00 30 00 39 00 47 00 56 00 46 00 64 00 42 00 55 00 6b 00 56 00 63 00 54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 58 00 46 00 64 00 70 00 62 00 6d 00 52 00 76 00 64 00 33 00 4d 00 67 00 54 00 6c 00 52 00 63 00 51 00 33 00 56 00 79 00 63 00 6d 00 56 00 75 00 64 00 46 00 5a 00 6c 00 63 00 6e 00 4e 00 70 00 62 00 32 00 35 00 63 00 56 00 32 00 6c 00 75 00 62 00 47 00 39 00 6e 00 62 00 32 00 34 00 3d 00 } //01 00 
		$a_01_3 = {51 00 58 00 52 00 6c 00 62 00 6e 00 52 00 70 00 62 00 32 00 34 00 75 00 4c 00 69 00 34 00 3d 00 } //01 00 
		$a_01_4 = {51 00 57 00 78 00 73 00 49 00 48 00 6c 00 76 00 64 00 58 00 49 00 67 00 5a 00 6d 00 6c 00 73 00 5a 00 58 00 4d 00 67 00 64 00 32 00 56 00 79 00 5a 00 53 00 42 00 6c 00 62 00 6d 00 4e 00 79 00 65 00 58 00 42 00 30 00 5a 00 57 00 51 00 73 00 49 00 47 00 6c 00 6d 00 49 00 48 00 6c 00 76 00 64 00 53 00 42 00 33 00 59 00 57 00 35 00 30 00 49 00 48 00 52 00 76 00 49 00 47 00 64 00 6c 00 64 00 43 00 42 00 30 00 61 00 47 00 56 00 74 00 49 00 47 00 46 00 73 00 62 00 43 00 42 00 69 00 59 00 57 00 4e 00 72 00 4c 00 43 00 42 00 77 00 62 00 } //01 00 
		$a_01_5 = {47 00 56 00 68 00 63 00 32 00 55 00 67 00 59 00 32 00 46 00 79 00 5a 00 57 00 5a 00 31 00 62 00 47 00 78 00 35 00 49 00 48 00 4a 00 6c 00 59 00 57 00 51 00 67 00 64 00 47 00 68 00 6c 00 49 00 48 00 52 00 6c 00 65 00 48 00 51 00 67 00 62 00 6d 00 39 00 30 00 5a 00 53 00 42 00 73 00 62 00 32 00 4e 00 68 00 64 00 47 00 56 00 6b 00 49 00 47 00 6c 00 75 00 49 00 48 00 6c 00 76 00 64 00 58 00 49 00 67 00 5a 00 47 00 56 00 7a 00 61 00 33 00 52 00 76 00 63 00 43 00 34 00 75 00 4c 00 67 00 3d 00 3d 00 } //00 00 
		$a_01_6 = {00 5d 04 00 } //00 e3 
	condition:
		any of ($a_*)
 
}