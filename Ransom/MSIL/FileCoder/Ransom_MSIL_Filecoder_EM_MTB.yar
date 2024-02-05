
rule Ransom_MSIL_Filecoder_EM_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.EM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_81_0 = {40 70 72 6f 74 6f 6e 6d 61 69 6c 2e 63 68 } //01 00 
		$a_81_1 = {44 45 43 52 59 50 54 20 4d 59 20 46 49 4c 45 53 } //01 00 
		$a_81_2 = {45 6e 63 72 79 70 74 65 64 2e 70 68 70 } //01 00 
		$a_81_3 = {2f 43 20 73 63 20 64 65 6c 65 74 65 20 56 53 53 } //01 00 
		$a_81_4 = {44 65 63 72 79 70 74 69 6f 6e 49 6e 66 6f 2e 61 75 74 68 } //00 00 
	condition:
		any of ($a_*)
 
}