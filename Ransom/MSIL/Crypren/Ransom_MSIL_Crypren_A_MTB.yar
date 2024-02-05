
rule Ransom_MSIL_Crypren_A_MTB{
	meta:
		description = "Ransom:MSIL/Crypren.A!MTB,SIGNATURE_TYPE_PEHSTR,08 00 08 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_1 = {2e 00 63 00 69 00 70 00 68 00 65 00 72 00 65 00 64 00 } //01 00 
		$a_01_2 = {5c 00 52 00 45 00 41 00 44 00 4d 00 45 00 5f 00 44 00 4f 00 4e 00 54 00 5f 00 44 00 45 00 4c 00 45 00 54 00 45 00 2e 00 74 00 78 00 74 00 } //05 00 
		$a_01_3 = {6e 00 35 00 4b 00 71 00 39 00 31 00 58 00 54 00 79 00 6d 00 57 00 65 00 46 00 76 00 47 00 4e 00 36 00 44 00 67 00 5a 00 75 00 35 00 4a 00 32 00 72 00 34 00 4f 00 38 00 4c 00 39 00 42 00 6c 00 } //05 00 
		$a_01_4 = {6e 00 52 00 7a 00 59 00 37 00 56 00 4b 00 6f 00 4f 00 79 00 66 00 61 00 75 00 51 00 45 00 71 00 45 00 57 00 43 00 32 00 44 00 78 00 39 00 76 00 6c 00 49 00 4c 00 70 00 30 00 41 00 47 00 42 00 } //05 00 
		$a_01_5 = {38 00 62 00 25 00 43 00 41 00 32 00 6f 00 7b 00 61 00 7d 00 34 00 4b 00 47 00 67 00 26 00 37 00 35 00 53 00 7a 00 21 00 4c 00 24 00 33 00 6a 00 63 00 58 00 2f 00 39 00 36 00 69 00 48 00 2a 00 } //05 00 
		$a_01_6 = {30 00 62 00 61 00 64 00 63 00 30 00 64 00 65 00 62 00 61 00 64 00 63 00 30 00 64 00 65 00 31 00 30 00 62 00 61 00 64 00 63 00 30 00 64 00 65 00 62 00 61 00 64 00 63 00 30 00 64 00 65 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}