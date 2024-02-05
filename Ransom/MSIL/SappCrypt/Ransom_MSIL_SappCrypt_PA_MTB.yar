
rule Ransom_MSIL_SappCrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/SappCrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 61 00 70 00 70 00 68 00 69 00 72 00 65 00 5f 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_1 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 41 00 } //01 00 
		$a_01_2 = {2e 00 73 00 61 00 70 00 70 00 68 00 69 00 72 00 65 00 } //01 00 
		$a_01_3 = {59 00 4f 00 55 00 52 00 20 00 46 00 49 00 4c 00 45 00 53 00 20 00 48 00 41 00 56 00 45 00 20 00 42 00 45 00 45 00 4e 00 20 00 45 00 4e 00 43 00 52 00 59 00 50 00 54 00 45 00 44 00 21 00 21 00 } //01 00 
		$a_01_4 = {5c 53 61 70 70 68 69 72 65 20 52 61 6e 73 6f 6d 77 61 72 65 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}