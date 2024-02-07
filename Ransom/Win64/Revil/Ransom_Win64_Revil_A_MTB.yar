
rule Ransom_Win64_Revil_A_MTB{
	meta:
		description = "Ransom:Win64/Revil.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {53 75 78 78 65 73 66 75 6c 6c 79 20 69 6d 70 65 72 73 6f 6e 61 74 65 64 } //01 00  Suxxesfully impersonated
		$a_81_1 = {57 69 6e 64 69 72 20 66 6f 75 6e 64 65 64 21 } //01 00  Windir founded!
		$a_81_2 = {4d 61 6e 75 61 6c 20 73 77 69 74 63 68 20 74 6f 20 66 61 73 74 20 65 6e 63 20 6d 6f 64 65 } //01 00  Manual switch to fast enc mode
		$a_81_3 = {4d 61 6e 75 61 6c 20 73 77 69 74 63 68 20 74 6f 20 66 75 6c 6c 20 65 6e 63 20 6d 6f 64 65 } //01 00  Manual switch to full enc mode
		$a_81_4 = {73 74 61 72 74 20 65 6e 63 72 79 70 74 20 66 69 6c 65 73 } //01 00  start encrypt files
		$a_81_5 = {64 65 6c 65 74 65 20 73 68 61 64 6f 77 20 63 6f 70 79 } //00 00  delete shadow copy
		$a_00_6 = {5d 04 00 00 } //d0 45 
	condition:
		any of ($a_*)
 
}