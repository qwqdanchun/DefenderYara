
rule Ransom_MSIL_Filecoder_EY_MTB{
	meta:
		description = "Ransom:MSIL/Filecoder.EY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_81_0 = {66 69 6c 65 73 20 68 61 76 65 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //01 00  files have been encrypted
		$a_81_1 = {50 6f 76 6c 73 6f 6d 77 61 72 65 } //01 00  Povlsomware
		$a_81_2 = {45 6e 63 72 79 70 74 65 64 3a } //01 00  Encrypted:
		$a_81_3 = {57 69 6e 33 32 5f 53 68 61 64 6f 77 43 6f 70 79 } //00 00  Win32_ShadowCopy
	condition:
		any of ($a_*)
 
}