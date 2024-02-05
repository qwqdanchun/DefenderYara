
rule Worm_Win32_Autorun_gen_AX{
	meta:
		description = "Worm:Win32/Autorun.gen!AX,SIGNATURE_TYPE_PEHSTR_EXT,08 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {5b 61 75 74 6f 72 75 6e 5d } //01 00 
		$a_00_1 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00 
		$a_00_2 = {73 68 65 6c 6c 5c 4f 70 65 6e 5c 63 6f 6d 6d 61 6e 64 3d } //02 00 
		$a_02_3 = {43 61 62 69 6e 65 74 57 43 6c 61 73 73 90 05 10 01 00 4d 79 20 43 6f 6d 70 75 74 65 72 90 00 } //05 00 
		$a_01_4 = {83 f8 04 74 16 83 f8 06 74 11 83 f8 02 74 0c 83 f8 05 74 07 83 f8 00 74 02 } //08 00 
		$a_03_5 = {83 f8 02 74 1a 83 f8 04 74 15 83 f8 06 74 10 83 3d 90 01 04 00 74 05 83 f8 03 74 02 90 09 40 00 90 02 10 c6 05 90 01 04 62 fe 05 90 01 04 80 3d 90 01 04 7b 90 00 } //06 00 
		$a_03_6 = {89 c3 83 c3 12 80 3b 7a 0f 84 90 01 04 68 90 01 04 68 90 01 04 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}