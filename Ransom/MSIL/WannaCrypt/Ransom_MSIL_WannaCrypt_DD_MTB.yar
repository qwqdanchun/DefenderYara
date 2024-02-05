
rule Ransom_MSIL_WannaCrypt_DD_MTB{
	meta:
		description = "Ransom:MSIL/WannaCrypt.DD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {41 6c 6c 20 59 6f 75 72 20 46 69 6c 65 73 20 41 72 65 20 45 6e 63 72 79 70 74 65 64 } //01 00 
		$a_81_1 = {48 6f 77 20 54 6f 20 44 65 63 72 79 70 74 20 4d 79 20 46 69 6c 65 73 } //01 00 
		$a_81_2 = {45 6e 63 72 79 70 74 65 64 20 46 69 6c 65 73 } //01 00 
		$a_81_3 = {4e 6f 43 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}