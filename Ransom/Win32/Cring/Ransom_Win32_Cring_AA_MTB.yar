
rule Ransom_Win32_Cring_AA_MTB{
	meta:
		description = "Ransom:Win32/Cring.AA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_81_0 = {64 65 52 65 61 64 4d 65 21 21 21 2e 74 78 74 } //01 00  deReadMe!!!.txt
		$a_00_1 = {64 00 6f 00 6e 00 6f 00 74 00 20 00 63 00 72 00 79 00 20 00 3a 00 29 00 } //01 00  donot cry :)
		$a_81_2 = {2e 63 72 69 6e 67 } //01 00  .cring
		$a_00_3 = {6b 00 69 00 6c 00 6c 00 6d 00 65 00 2e 00 62 00 61 00 74 00 } //01 00  killme.bat
		$a_00_4 = {43 72 79 70 74 33 72 } //01 00  Crypt3r
		$a_00_5 = {46 00 69 00 6e 00 69 00 73 00 68 00 65 00 64 00 21 00 20 00 3a 00 28 00 } //00 00  Finished! :(
	condition:
		any of ($a_*)
 
}