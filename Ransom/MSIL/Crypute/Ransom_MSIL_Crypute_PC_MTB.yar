
rule Ransom_MSIL_Crypute_PC_MTB{
	meta:
		description = "Ransom:MSIL/Crypute.PC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {46 00 75 00 63 00 6b 00 74 00 68 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 } //01 00 
		$a_01_1 = {2e 00 66 00 75 00 63 00 6b 00 65 00 64 00 } //01 00 
		$a_01_2 = {45 00 6e 00 63 00 72 00 79 00 70 00 74 00 69 00 6f 00 6e 00 20 00 43 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 } //01 00 
		$a_01_3 = {2f 00 43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //01 00 
		$a_01_4 = {5c 52 61 6e 73 6f 6d 77 61 72 65 32 31 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}