
rule Ransom_Win32_Troldesh_B{
	meta:
		description = "Ransom:Win32/Troldesh.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 65 74 77 6f 72 6b 53 75 62 73 79 73 74 65 6d 2e 6c 6e 6b 00 } //01 00 
		$a_01_1 = {75 70 64 2e 70 68 70 3f 00 } //01 00 
		$a_01_2 = {73 63 61 6e 5f 70 6f 72 74 00 } //01 00  捳湡灟牯t
		$a_01_3 = {2f 74 61 73 6b 2e 70 68 70 3f 00 } //01 00 
		$a_01_4 = {44 65 61 72 20 41 56 20 61 6e 61 6c 79 73 74 73 2c } //01 00  Dear AV analysts,
		$a_01_5 = {2e 6f 6e 69 6f 6e 00 } //01 00 
		$a_01_6 = {5c 43 73 72 73 73 5c 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e 5c } //01 00  \Csrss\Configuration\
		$a_01_7 = {43 6c 69 65 6e 74 20 53 65 72 76 65 72 20 52 75 6e 74 69 6d 65 20 53 75 62 73 79 73 74 65 6d 00 } //00 00 
		$a_00_8 = {5d 04 00 00 0c } //6e 03 
	condition:
		any of ($a_*)
 
}