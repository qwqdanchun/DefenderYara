
rule Ransom_Win32_Apollo_A_{
	meta:
		description = "Ransom:Win32/Apollo.A!!Apollo.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,1e 00 1e 00 03 00 00 0a 00 "
		
	strings :
		$a_00_0 = {69 64 3d 25 73 26 70 6e 61 6d 65 3d 25 73 26 75 6e 61 6d 65 3d 25 73 26 70 6b 65 79 3d 25 73 26 61 65 6b 65 79 3d 25 73 26 70 70 75 62 3d 25 73 26 75 73 65 72 78 3d 25 73 } //0a 00 
		$a_00_1 = {2f 73 74 65 61 6c 65 72 2e 70 68 70 } //0a 00 
		$a_00_2 = {75 72 6c 3d 25 73 26 75 73 65 72 6e 61 6d 65 3d 25 73 26 70 61 73 73 77 6f 72 64 3d 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}