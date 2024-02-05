
rule Ransom_MSIL_SatnEncrypt_PA_MTB{
	meta:
		description = "Ransom:MSIL/SatnEncrypt.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 53 00 6e 00 61 00 6b 00 65 00 45 00 79 00 65 00 } //01 00 
		$a_01_1 = {53 00 4e 00 41 00 4b 00 45 00 20 00 45 00 59 00 45 00 20 00 53 00 51 00 55 00 41 00 44 00 } //01 00 
		$a_03_2 = {5c 53 41 54 41 4e 20 45 4e 43 52 59 50 54 45 44 20 59 4f 55 5c 90 02 10 5c 90 02 10 5c 53 41 54 41 4e 20 45 4e 43 52 59 50 54 45 44 20 59 4f 55 2e 70 64 62 90 00 } //01 00 
		$a_01_3 = {53 00 41 00 54 00 41 00 4e 00 20 00 45 00 4e 00 43 00 52 00 59 00 50 00 54 00 45 00 44 00 20 00 59 00 4f 00 55 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}