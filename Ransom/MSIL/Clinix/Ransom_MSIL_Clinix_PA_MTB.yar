
rule Ransom_MSIL_Clinix_PA_MTB{
	meta:
		description = "Ransom:MSIL/Clinix.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 00 53 00 74 00 61 00 72 00 74 00 20 00 4d 00 65 00 6e 00 75 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 73 00 5c 00 53 00 74 00 61 00 72 00 74 00 75 00 70 00 5c 00 90 02 30 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_1 = {5c 00 72 00 75 00 6e 00 64 00 6c 00 6c 00 33 00 32 00 2d 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 69 00 6e 00 76 00 73 00 2e 00 76 00 62 00 73 00 22 00 20 00 22 00 25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 6a 00 61 00 76 00 61 00 32 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_3 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 65 00 78 00 65 00 20 00 22 00 25 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 25 00 5c 00 69 00 6e 00 76 00 73 00 2e 00 76 00 62 00 73 00 22 00 20 00 22 00 25 00 61 00 70 00 70 00 64 00 61 00 74 00 61 00 25 00 5c 00 6a 00 61 00 76 00 61 00 32 00 2e 00 62 00 61 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}