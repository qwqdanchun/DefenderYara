
rule Ransom_Win32_Basta_XX_MTB{
	meta:
		description = "Ransom:Win32/Basta.XX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 8b 0d 30 00 00 00 e9 } //01 00 
		$a_01_1 = {8a f6 e9 9c cb 05 00 } //01 00 
		$a_01_2 = {8b 49 0c e9 } //01 00 
		$a_01_3 = {53 65 6e 64 4b 65 79 73 53 61 6d 70 6c 65 2e 70 64 62 } //00 00  SendKeysSample.pdb
	condition:
		any of ($a_*)
 
}