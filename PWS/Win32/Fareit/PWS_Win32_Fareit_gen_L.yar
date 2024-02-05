
rule PWS_Win32_Fareit_gen_L{
	meta:
		description = "PWS:Win32/Fareit.gen!L,SIGNATURE_TYPE_PEHSTR_EXT,17 00 14 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 6f 66 74 77 61 72 65 5c 77 69 6e 72 61 72 00 } //01 00 
		$a_00_1 = {5c 65 73 74 73 6f 66 74 5c 61 6c 66 74 70 00 69 6e 74 65 72 6e 65 74 20 65 78 70 6c 6f 72 65 72 00 77 69 6e 69 6e 65 74 63 61 63 68 65 63 72 65 64 65 6e 74 69 61 6c 73 00 6d 73 20 69 65 20 66 74 70 20 70 61 73 73 77 6f 72 64 73 00 } //01 00 
		$a_00_2 = {69 6e 65 74 63 6f 6d 6d 20 73 65 72 76 65 72 20 70 61 73 73 77 6f 72 64 73 00 6f 75 74 6c 6f 6f 6b 20 61 63 63 6f 75 6e 74 20 6d 61 6e 61 67 65 72 20 70 61 73 73 77 6f 72 64 73 00 } //0a 00 
		$a_01_3 = {b9 94 11 00 00 b0 0d f2 ae b8 94 11 00 00 2b c1 } //0a 00 
		$a_03_4 = {8b d0 d1 e2 b9 09 00 00 00 d1 ea 73 90 01 01 81 f2 31 92 a9 fc 81 f2 11 11 11 11 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}