
rule Ransom_Win32_Apocalypse_A_bit{
	meta:
		description = "Ransom:Win32/Apocalypse.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 20 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //01 00 
		$a_01_1 = {3a 00 5a 00 6f 00 6e 00 65 00 2e 00 49 00 64 00 65 00 6e 00 74 00 69 00 66 00 69 00 65 00 72 00 } //01 00 
		$a_03_2 = {4c 00 6f 00 63 00 61 00 6c 00 5c 00 90 02 15 5f 00 52 00 61 00 6e 00 73 00 6f 00 6d 00 77 00 61 00 72 00 65 00 90 00 } //01 00 
		$a_01_3 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_03_4 = {59 6f 75 20 77 69 6c 6c 20 68 61 76 65 20 74 6f 20 6f 72 64 65 72 20 74 68 65 20 55 6e 6c 6f 63 6b 2d 50 61 73 73 77 6f 72 64 20 61 6e 64 20 74 68 65 20 90 02 15 20 44 65 63 72 79 70 74 69 6f 6e 20 53 6f 66 74 77 61 72 65 2e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}