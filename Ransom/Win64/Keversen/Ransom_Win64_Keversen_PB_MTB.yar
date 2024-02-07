
rule Ransom_Win64_Keversen_PB_MTB{
	meta:
		description = "Ransom:Win64/Keversen.PB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 00 6f 00 6e 00 69 00 6f 00 6e 00 } //01 00  .onion
		$a_01_1 = {62 00 65 00 65 00 6e 00 20 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //03 00  been encrypted
		$a_01_2 = {21 00 3d 00 52 00 45 00 41 00 44 00 4d 00 59 00 3d 00 21 00 2e 00 74 00 78 00 74 00 } //03 00  !=READMY=!.txt
		$a_01_3 = {21 00 3d 00 48 00 6f 00 77 00 5f 00 74 00 6f 00 5f 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 5f 00 66 00 69 00 6c 00 65 00 73 00 3d 00 21 00 2e 00 74 00 78 00 74 00 } //03 00  !=How_to_decrypt_files=!.txt
		$a_01_4 = {48 00 6f 00 77 00 5f 00 74 00 6f 00 5f 00 64 00 65 00 63 00 72 00 79 00 70 00 74 00 5f 00 66 00 69 00 6c 00 65 00 73 00 2e 00 74 00 78 00 74 00 } //00 00  How_to_decrypt_files.txt
	condition:
		any of ($a_*)
 
}