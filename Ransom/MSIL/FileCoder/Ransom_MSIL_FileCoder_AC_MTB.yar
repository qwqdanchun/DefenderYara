
rule Ransom_MSIL_FileCoder_AC_MTB{
	meta:
		description = "Ransom:MSIL/FileCoder.AC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_81_0 = {41 72 63 61 6e 65 20 52 61 6e 73 6f 6d 77 61 72 65 20 5b 20 59 6f 75 72 20 66 69 6c 65 73 20 61 72 65 20 65 6e 63 72 79 70 74 65 64 21 5d } //01 00 
		$a_81_1 = {59 4f 55 52 20 46 49 4c 45 53 20 41 52 45 20 46 55 43 4b 49 4e 47 20 65 6e 63 72 79 70 74 65 64 } //01 00 
		$a_81_2 = {64 65 63 72 79 70 74 20 6d 79 20 73 68 69 74 } //00 00 
	condition:
		any of ($a_*)
 
}