
rule Ransom_MSIL_Sharkcrypt_B{
	meta:
		description = "Ransom:MSIL/Sharkcrypt.B,SIGNATURE_TYPE_PEHSTR,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {59 00 6f 00 75 00 72 00 20 00 63 00 6f 00 64 00 65 00 20 00 67 00 6f 00 65 00 73 00 20 00 68 00 65 00 72 00 65 00 2a 00 } //02 00  Your code goes here*
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //01 00  CreateDecryptor
		$a_01_2 = {70 61 79 6c 6f 61 64 5f 70 61 74 68 } //01 00  payload_path
		$a_01_3 = {65 78 74 65 6e 73 69 6f 6e 73 } //01 00  extensions
		$a_01_4 = {64 65 66 61 75 6c 74 5f 70 72 69 63 65 } //00 00  default_price
	condition:
		any of ($a_*)
 
}