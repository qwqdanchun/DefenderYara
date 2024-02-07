
rule Ransom_Win32_Basta_MKK_MTB{
	meta:
		description = "Ransom:Win32/Basta.MKK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_00_0 = {bb af 00 00 00 e9 b0 96 fc ff } //01 00 
		$a_00_1 = {8b db e9 1b 83 06 00 } //01 00 
		$a_01_2 = {8b 4d 0c e9 42 70 fe ff } //01 00 
		$a_01_3 = {fc e9 4e 8f fb ff } //01 00 
		$a_01_4 = {ac e9 60 4a 00 00 } //01 00 
		$a_01_5 = {02 c3 e9 47 36 01 00 } //01 00 
		$a_01_6 = {32 c3 e9 1b 8f fd ff } //01 00 
		$a_01_7 = {8b ff e9 34 b3 01 00 } //01 00 
		$a_01_8 = {c0 c8 5f e9 92 bc 04 00 } //01 00 
		$a_01_9 = {aa e9 58 49 00 00 } //01 00 
		$a_01_10 = {8b d2 e9 85 3f f9 ff } //01 00 
		$a_01_11 = {8b ed e9 ed ff ff ff } //01 00 
		$a_01_12 = {49 e9 0b 34 05 00 } //01 00 
		$a_01_13 = {56 69 73 69 62 6c 65 45 6e 74 72 79 } //00 00  VisibleEntry
	condition:
		any of ($a_*)
 
}