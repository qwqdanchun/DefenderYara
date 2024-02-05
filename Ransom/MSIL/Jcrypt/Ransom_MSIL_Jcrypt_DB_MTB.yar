
rule Ransom_MSIL_Jcrypt_DB_MTB{
	meta:
		description = "Ransom:MSIL/Jcrypt.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {59 6f 75 72 20 66 69 6c 65 73 20 28 63 6f 75 6e 74 3a 20 6e 29 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //01 00 
		$a_81_1 = {52 45 43 4f 56 45 52 5f 5f 46 49 4c 45 53 } //01 00 
		$a_81_2 = {42 69 74 63 6f 69 6e } //01 00 
		$a_81_3 = {2e 6a 63 72 79 70 74 } //00 00 
	condition:
		any of ($a_*)
 
}