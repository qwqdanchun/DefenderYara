
rule Ransom_MSIL_FileCoder_PA_MTB{
	meta:
		description = "Ransom:MSIL/FileCoder.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6e 00 67 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_01_1 = {59 00 6f 00 75 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 73 00 74 00 72 00 75 00 63 00 6b 00 20 00 77 00 69 00 74 00 68 00 20 00 44 00 55 00 4d 00 42 00 } //01 00 
		$a_01_2 = {59 00 6f 00 75 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 20 00 68 00 61 00 76 00 65 00 20 00 62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //01 00 
		$a_01_3 = {6c 00 65 00 65 00 74 00 20 00 68 00 61 00 6b 00 65 00 72 00 } //01 00 
		$a_03_4 = {5c 44 55 4d 42 90 02 10 5c 44 55 4d 42 5c 6f 62 6a 5c 90 02 15 5c 44 55 4d 42 2e 70 64 62 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 98 
	condition:
		any of ($a_*)
 
}
rule Ransom_MSIL_FileCoder_PA_MTB_2{
	meta:
		description = "Ransom:MSIL/FileCoder.PA!MTB,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 79 70 74 65 64 45 78 74 65 6e 73 69 6f 6e } //01 00 
		$a_01_1 = {44 65 63 72 79 70 74 4e 6f 74 65 46 69 6c 65 6e 61 6d 65 } //01 00 
		$a_01_2 = {49 44 5f 44 50 5f 46 49 4c 45 } //01 00 
		$a_01_3 = {4c 6f 63 6b 65 72 46 6f 72 56 61 6c 69 64 4b 65 79 } //01 00 
		$a_01_4 = {44 65 6c 65 74 65 53 68 61 64 6f 77 43 6f 70 69 65 73 } //01 00 
		$a_01_5 = {43 79 63 6c 65 44 65 66 65 6e 64 65 72 } //01 00 
		$a_01_6 = {45 6e 63 72 79 70 74 46 6f 6c 64 65 72 } //01 00 
		$a_01_7 = {64 00 65 00 63 00 6f 00 64 00 6f 00 72 00 40 00 61 00 69 00 72 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 63 00 } //01 00 
		$a_01_8 = {2e 00 6b 00 69 00 73 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}