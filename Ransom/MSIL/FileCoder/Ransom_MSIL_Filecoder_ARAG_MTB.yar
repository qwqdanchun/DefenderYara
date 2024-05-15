
rule Ransom_MSIL_Filecoder_ARAG_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.ARAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 08 06 08 91 03 08 03 6f 90 01 03 0a 5d 6f 90 01 03 0a 61 d2 9c 08 17 58 0c 08 06 8e 69 32 e0 90 00 } //02 00 
		$a_01_1 = {5c 72 6f 75 6e 63 2e 70 64 62 } //02 00  \rounc.pdb
		$a_80_2 = {46 69 6c 65 20 68 61 73 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //File has been encrypted  00 00 
	condition:
		any of ($a_*)
 
}