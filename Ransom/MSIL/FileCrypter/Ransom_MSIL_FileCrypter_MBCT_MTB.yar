
rule Ransom_MSIL_FileCrypter_MBCT_MTB{
	meta:
		description = "Ransom:MSIL/FileCrypter.MBCT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {11 0d 11 0e 9a 13 0f 00 00 07 11 0f 11 0f 72 1f 00 00 70 } //01 00 
		$a_01_1 = {64 00 35 00 61 00 30 00 31 00 73 00 39 00 75 00 } //01 00 
		$a_01_2 = {52 00 41 00 4e 00 53 00 4f 00 4d 00 57 00 41 00 52 00 45 00 33 00 2e 00 5f 00 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}