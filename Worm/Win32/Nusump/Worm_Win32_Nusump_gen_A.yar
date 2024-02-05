
rule Worm_Win32_Nusump_gen_A{
	meta:
		description = "Worm:Win32/Nusump.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 45 57 20 49 4e 46 45 43 54 45 44 20 42 59 20 55 53 42 00 } //01 00 
		$a_01_1 = {69 6e 64 65 78 2e 70 68 70 3f 69 64 3d 25 73 26 63 6f 3d 25 73 26 75 73 3d 25 73 26 6f 73 3d 25 73 26 76 72 3d 25 73 26 64 74 00 } //01 00 
		$a_01_2 = {81 3f 2e 6d 73 6e 75 } //01 00 
		$a_01_3 = {81 3f 2e 64 77 6e 75 } //01 00 
		$a_01_4 = {81 3f 2e 75 73 62 75 } //00 00 
	condition:
		any of ($a_*)
 
}