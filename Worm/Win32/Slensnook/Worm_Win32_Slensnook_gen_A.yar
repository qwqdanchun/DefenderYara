
rule Worm_Win32_Slensnook_gen_A{
	meta:
		description = "Worm:Win32/Slensnook.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {32 c2 42 81 e2 ff 00 00 80 88 04 31 79 08 4a 81 ca 00 ff ff ff 42 41 83 f9 90 01 01 7c dd c6 46 90 01 01 00 8b c6 90 09 07 00 8a 84 0f 90 00 } //01 00 
		$a_00_1 = {53 4e 53 2d 33 2e 30 2e } //01 00 
		$a_00_2 = {46 69 72 65 20 46 6f 78 53 4e 53 00 } //01 00 
		$a_00_3 = {2f 6d 65 2f 66 72 69 65 6e 64 73 3f 66 69 65 6c 64 73 3d 69 64 26 61 63 63 65 73 73 5f 74 6f 6b 65 6e 3d 25 73 00 } //01 00 
		$a_01_4 = {52 65 63 6f 76 65 72 65 64 20 50 57 73 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 3c 
	condition:
		any of ($a_*)
 
}