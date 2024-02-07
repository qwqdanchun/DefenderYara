
rule Ransom_MSIL_RansomBlox_PA_MTB{
	meta:
		description = "Ransom:MSIL/RansomBlox.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 90 02 06 2d 00 90 02 02 20 00 2d 00 74 00 20 00 30 00 90 00 } //01 00 
		$a_01_1 = {59 00 6f 00 75 00 72 00 20 00 61 00 6c 00 6c 00 20 00 66 00 69 00 6c 00 65 00 20 00 69 00 73 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 20 00 62 00 79 00 20 00 52 00 61 00 6e 00 53 00 6f 00 6d 00 } //01 00  Your all file is encrypted by RanSom
		$a_03_2 = {5c 52 57 61 72 65 5c 52 57 61 72 65 5c 90 02 10 5c 52 6f 57 61 72 65 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}