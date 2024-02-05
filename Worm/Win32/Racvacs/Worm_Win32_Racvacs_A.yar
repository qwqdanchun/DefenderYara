
rule Worm_Win32_Racvacs_A{
	meta:
		description = "Worm:Win32/Racvacs.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {e8 0c 00 00 00 61 75 74 6f 72 75 6e 2e 69 6e 66 00 53 } //01 00 
		$a_01_1 = {0f 31 89 c3 0f 31 89 c1 0f 31 89 c2 0f 31 89 c7 0f 31 53 51 52 57 50 } //01 00 
		$a_01_2 = {c6 07 5c 47 0f 31 56 50 e8 06 00 00 00 25 78 2e 25 73 00 57 ff } //01 00 
		$a_01_3 = {81 3e 48 54 54 50 75 13 46 4b 66 39 3e 75 f9 66 39 7e 02 75 f3 } //01 00 
		$a_01_4 = {f6 12 42 e2 fb } //00 00 
	condition:
		any of ($a_*)
 
}