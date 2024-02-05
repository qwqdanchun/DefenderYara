
rule Ransom_MSIL_Hakbit_HZ_MTB{
	meta:
		description = "Ransom:MSIL/Hakbit.HZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 4b 69 6c 6c 70 72 6f 63 3e } //01 00 
		$a_01_1 = {44 45 53 43 72 79 70 74 6f 53 65 72 76 69 63 65 50 72 6f 76 69 64 65 72 } //01 00 
		$a_00_2 = {62 00 37 00 33 00 32 00 30 00 35 00 38 00 40 00 6e 00 6f 00 65 00 74 00 68 00 65 00 72 00 2d 00 73 00 74 00 69 00 66 00 74 00 75 00 6e 00 67 00 2e 00 64 00 65 00 } //01 00 
		$a_00_3 = {55 00 30 00 39 00 47 00 56 00 46 00 64 00 42 00 55 00 6b 00 56 00 63 00 54 00 57 00 6c 00 6a 00 63 00 6d 00 39 00 7a 00 62 00 32 00 5a 00 30 00 58 00 46 00 64 00 70 00 62 00 6d 00 52 00 76 00 64 00 33 00 4d 00 67 00 54 00 6c 00 52 00 63 00 51 00 33 00 56 00 79 00 63 00 6d 00 56 00 75 00 64 00 46 00 5a 00 6c 00 63 00 6e 00 4e 00 70 00 62 00 32 00 35 00 63 00 56 00 32 00 6c 00 75 00 62 00 47 00 39 00 6e 00 62 00 32 00 34 00 3d 00 } //01 00 
		$a_00_4 = {51 00 58 00 52 00 6c 00 62 00 6e 00 52 00 70 00 62 00 32 00 34 00 75 00 4c 00 69 00 34 00 3d 00 } //01 00 
		$a_00_5 = {51 00 57 00 78 00 73 00 49 00 48 00 6c 00 76 00 64 00 58 00 49 00 67 00 5a 00 6d 00 6c 00 73 00 5a 00 58 00 4d 00 67 00 64 00 32 00 56 00 79 00 5a 00 53 00 42 00 6c 00 62 00 6d 00 4e 00 79 00 65 00 58 00 42 00 30 00 5a 00 57 00 51 00 73 00 49 00 47 00 6c 00 6d 00 49 00 48 00 6c 00 76 00 64 00 53 00 42 00 33 00 59 00 57 00 35 00 30 00 49 00 48 00 52 00 76 00 49 00 47 00 64 00 6c 00 64 00 43 00 42 00 30 00 61 00 47 00 56 00 74 00 49 00 47 00 46 00 73 00 62 00 43 00 42 00 69 00 59 00 57 00 4e 00 72 00 4c 00 43 00 42 00 77 00 62 00 } //00 00 
	condition:
		any of ($a_*)
 
}