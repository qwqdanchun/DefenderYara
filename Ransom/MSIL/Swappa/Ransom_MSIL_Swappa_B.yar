
rule Ransom_MSIL_Swappa_B{
	meta:
		description = "Ransom:MSIL/Swappa.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 46 00 69 00 6c 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_1 = {5c 00 74 00 65 00 6d 00 70 00 66 00 6f 00 6c 00 64 00 65 00 72 00 64 00 72 00 61 00 67 00 6f 00 6e 00 63 00 72 00 79 00 70 00 74 00 } //01 00 
		$a_01_2 = {4f 00 74 00 6b 00 75 00 70 00 6e 00 69 00 6e 00 61 00 20 00 73 00 61 00 64 00 61 00 20 00 69 00 7a 00 6e 00 6f 00 73 00 69 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}